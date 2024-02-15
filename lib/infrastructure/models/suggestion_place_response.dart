import 'package:festa/infrastructure/models/autocomplete_prediction.dart';

class PlaceSuggestionResponse {
  String? status;
  List<AutoCompletePrediction>? predictions;

  PlaceSuggestionResponse({this.status, this.predictions});

  PlaceSuggestionResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['predictions'] != null) {
      predictions = <AutoCompletePrediction>[];
      json['predictions'].forEach((v) {
        predictions!.add(AutoCompletePrediction.fromJson(v));
      });
    }
  }

  static Future<PlaceSuggestionResponse?> parseAutoCompleteResult(
      Map<String, dynamic>? responseBody) async {
    try {
      return PlaceSuggestionResponse.fromJson(responseBody!);
    } catch (e) {
      print(e);
      return null;
    }
  }
}
