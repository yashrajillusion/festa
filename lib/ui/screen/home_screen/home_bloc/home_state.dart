part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<AutoCompletePrediction>? placeSuggestions;
  final int currentNavbarIndex;
  final MapCoordinatesModal currenLoactionCoordinates;

  const HomeState({
    required this.placeSuggestions,
    required this.currentNavbarIndex,
    required this.currenLoactionCoordinates,
  });

  HomeState copyWith({
    List<AutoCompletePrediction>? placeSuggestions,
    int? currentNavbarIndex,
    MapCoordinatesModal? currenLoactionCoordinates,
  }) {
    return HomeState(
        placeSuggestions: placeSuggestions ?? this.placeSuggestions,
        currentNavbarIndex: currentNavbarIndex ?? this.currentNavbarIndex,
        currenLoactionCoordinates:
            currenLoactionCoordinates ?? this.currenLoactionCoordinates);
  }

  @override
  List<Object?> get props => [
        placeSuggestions,
        currentNavbarIndex,
        currenLoactionCoordinates,
      ];
}
