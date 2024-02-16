part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<AutoCompletePrediction>? placeSuggestions;

  const HomeState({required this.placeSuggestions});

  HomeState copyWith({List<AutoCompletePrediction>? placeSuggestions}) {
    return HomeState(
        placeSuggestions: placeSuggestions ?? this.placeSuggestions);
  }

  @override
  List<Object?> get props => [placeSuggestions];
}
