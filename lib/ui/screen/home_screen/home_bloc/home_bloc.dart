import 'package:festa/infrastructure/commons/constants/route_constant.dart';
import 'package:festa/infrastructure/models/coordinates_response.dart';
import 'package:festa/infrastructure/models/suggestion_place_response.dart';
import 'package:festa/infrastructure/networks/network_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:festa/infrastructure/models/autocomplete_prediction.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(HomeState(
          placeSuggestions: const [],
          currentNavbarIndex: 0,
          currenLoactionCoordinates: MapCoordinatesModal(lng: 0.0, lat: 0.0),
        )) {
    on<AddPlaceSuggestion>(_onGoogleApiCall);
    on<FetchAutoPlace>(_fetchAutoPlace);
    on<ClearPlaceSuggestion>(_clearPlaceSuggestion);
    on<UpdateNavBarIndex>(_updateNavBarIndex);
    on<FetchCoordinates>(_fetchCoordinates);
  }

  void _onGoogleApiCall(AddPlaceSuggestion event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        placeSuggestions: event.placeSuggestions,
      ),
    );
  }

  void _clearPlaceSuggestion(
      ClearPlaceSuggestion event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(placeSuggestions: []),
    );
  }

  void _updateNavBarIndex(UpdateNavBarIndex event, Emitter<HomeState> emit) {
    emit(state.copyWith(currentNavbarIndex: event.navbarIndex));
  }

  void _fetchAutoPlace(FetchAutoPlace event, Emitter<HomeState> emit) async {
    try {
      Uri uri =
          Uri.https("maps.googleapis.com", 'maps/api/place/autocomplete/json', {
        "key": "AIzaSyCjOWuul-db69IzI90Wk2VH1t0z1FeFI0s",
        "input": event.searchQuery,
      });
      Map<String, dynamic>? response =
          await NetworkUtility.fetchUrl(uri.toString());

      if (response != null) {
        PlaceSuggestionResponse? result =
            await PlaceSuggestionResponse.parseAutoCompleteResult(response);
        if (result?.predictions != null) {
          emit(state.copyWith(placeSuggestions: result?.predictions));
        }
      }
    } catch (_) {}
  }

  void _fetchCoordinates(
      FetchCoordinates event, Emitter<HomeState> emit) async {
    try {
      Uri uri =
          Uri.https("maps.googleapis.com", 'maps/api/place/details/json', {
        "key": "AIzaSyCjOWuul-db69IzI90Wk2VH1t0z1FeFI0s",
        "placeid": event.placeId,
      });
      Map<String, dynamic>? response =
          await NetworkUtility.fetchUrl(uri.toString());
      if (response != null) {
        emit(
          state.copyWith(
              currenLoactionCoordinates: MapCoordinatesModal(
                  lat: response["result"]["geometry"]["location"]["lat"],
                  lng: response["result"]["geometry"]["location"]["lng"])),
        );
        Navigator.pushNamed(event.context, RouteConstant.mapScreen);
      }
    } catch (_) {}
  }
}

const Map x = {
  "html_attributions": [],
  "result": {
    "geometry": {
      "location": {"lat": 35.18145060000001, "lng": 136.9065571},
      "viewport": {
        "northeast": {"lat": 35.26035169936169, "lng": 137.0607946680411},
        "southwest": {"lat": 35.03386860764515, "lng": 136.7918271804861}
      }
    },
  },
  "status": "OK"
};
