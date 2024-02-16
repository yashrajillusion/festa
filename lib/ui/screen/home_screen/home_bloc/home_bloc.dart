import 'package:festa/infrastructure/models/suggestion_place_response.dart';
import 'package:festa/infrastructure/networks/network_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:festa/infrastructure/models/autocomplete_prediction.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState(placeSuggestions: [])) {
    on<AddPlaceSuggestion>(_onGoogleApiCall);
    on<FetchAutoPlace>(_fetchAutoPlace);
  }

  void _onGoogleApiCall(AddPlaceSuggestion event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        placeSuggestions: event.placeSuggestions,
      ),
    );
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
}
