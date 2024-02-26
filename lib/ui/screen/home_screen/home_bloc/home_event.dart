part of 'home_bloc.dart';

@immutable
abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class HomeStarted extends HomeEvent {}

class AddPlaceSuggestion extends HomeEvent {
  final List<AutoCompletePrediction>? placeSuggestions;

  const AddPlaceSuggestion(this.placeSuggestions);

  @override
  List<Object?> get props => [placeSuggestions];
}

class FetchAutoPlace extends HomeEvent {
  final String searchQuery;

  const FetchAutoPlace(this.searchQuery);

  @override
  List<Object?> get props => [searchQuery];
}

class FetchCoordinates extends HomeEvent {
  final String placeId;
  final BuildContext context;

  const FetchCoordinates(this.placeId, this.context);

  @override
  List<Object?> get props => [placeId, context];
}

class ClearPlaceSuggestion extends HomeEvent {}

class UpdateNavBarIndex extends HomeEvent {
  final int navbarIndex;

  const UpdateNavBarIndex(this.navbarIndex);

  @override
  List<Object?> get props => [navbarIndex];
}
