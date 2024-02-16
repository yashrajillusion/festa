part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<AutoCompletePrediction>? placeSuggestions;
  final int currentNavbarIndex;

  const HomeState(
      {required this.placeSuggestions, required this.currentNavbarIndex});

  HomeState copyWith({
    List<AutoCompletePrediction>? placeSuggestions,
    int? currentNavbarIndex,
  }) {
    return HomeState(
      placeSuggestions: placeSuggestions ?? this.placeSuggestions,
      currentNavbarIndex: currentNavbarIndex ?? this.currentNavbarIndex,
    );
  }

  @override
  List<Object?> get props => [placeSuggestions, currentNavbarIndex];
}
