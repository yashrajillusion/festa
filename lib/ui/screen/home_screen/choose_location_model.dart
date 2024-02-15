import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/infrastructure/commons/constants/image_constant.dart';
import 'package:festa/infrastructure/models/autocomplete_prediction.dart';
import 'package:festa/infrastructure/models/suggestion_place_response.dart';
import 'package:festa/infrastructure/networks/network_utils.dart';
import 'package:festa/ui/common/text_fields/text_fields_widget.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:festa/ui/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<AutoCompletePrediction>? placeSuggestions = [];
  TextEditingController controller = TextEditingController();

  void placeAutoComplete(String query) async {
    Uri uri =
        Uri.https("maps.googleapis.com", 'maps/api/place/autocomplete/json', {
      "key": "AIzaSyCjOWuul-db69IzI90Wk2VH1t0z1FeFI0s",
      "input": query,
    });
    Map<String, dynamic>? response =
        await NetworkUtility.fetchUrl(uri.toString());
    if (response != null) {
      PlaceSuggestionResponse? result =
          await PlaceSuggestionResponse.parseAutoCompleteResult(response);
      if (result?.predictions != null) {
        setState(() {
          placeSuggestions = result?.predictions;
        });
      }
    }
  }

  final List<SuggestedCityModal> suggestCityList = [
    SuggestedCityModal(
        cityName: "Bangalore", cityUrl: ImageConstants.bangalore),
    SuggestedCityModal(cityName: "Mumbai", cityUrl: ImageConstants.mumbai),
    SuggestedCityModal(cityName: "Delhi", cityUrl: ImageConstants.delhi),
    SuggestedCityModal(
        cityName: "Hyderabad", cityUrl: ImageConstants.hyderabad),
    SuggestedCityModal(
        cityName: "Bangalore", cityUrl: ImageConstants.bangalore),
    SuggestedCityModal(cityName: "Mumbai", cityUrl: ImageConstants.mumbai),
    SuggestedCityModal(cityName: "Delhi", cityUrl: ImageConstants.delhi),
    SuggestedCityModal(
        cityName: "Hyderabad", cityUrl: ImageConstants.hyderabad),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorConstants.locationBg.withOpacity(0.1),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: ColorConstants.grey950,
                border: Border.all(
                  color: ColorConstants.grey850,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const FestaText(
                        title: "Choose your Location",
                        fontSize: 18,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close,
                          color: ColorConstants.primary,
                          size: 24,
                        ),
                      )
                    ],
                  ),
                ),
                TextFormFieldWidget(
                  controller: controller,
                  onChanged: (value) {
                    placeAutoComplete(value);
                  },
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  prefixIconWidgetConstraints:
                      const BoxConstraints(maxHeight: 24),
                  prefixIconWidget: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 8),
                    child: SvgPicture.asset(
                      ImageConstants.search,
                      color: ColorConstants.grey99,
                    ),
                  ),
                  suffixIcon: InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: () {
                      setState(() {
                        controller.clear();
                        placeSuggestions?.clear();
                      });
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.close,
                        color: ColorConstants.grey600,
                        size: 24,
                      ),
                    ),
                  ),
                  textColor: ColorConstants.grey99,
                  fillColor: Colors.black,
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  borderRadius: 10,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                SizedBox(
                  height: placeSuggestions!.isEmpty && controller.text.isEmpty
                      ? 0
                      : 196,
                  child: placeSuggestions!.isEmpty && controller.text.isNotEmpty
                      ? const Center(
                          child: FestaText(
                              title: "No Place Found",
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      : ListView.builder(
                          itemCount: placeSuggestions?.length ?? 0,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 18, top: 16),
                              child: FestaText(
                                title:
                                    placeSuggestions?[index].description ?? "",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                maxLine: 2,
                              ),
                            );
                          },
                        ),
                ),
                if (placeSuggestions!.isEmpty && controller.text.isEmpty) ...{
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        SvgPicture.asset(ImageConstants.gps),
                        const SizedBox(width: 8),
                        const FestaText(
                          title: "Detect my location",
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 8),
                    child: FestaText(
                      title: "Suggested",
                      fontSize: 14,
                    ),
                  ),
                  Container(
                    height: 80,
                    margin: const EdgeInsets.only(left: 16, bottom: 16),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: ColorConstants.suggested,
                              border: Border.all(
                                color: ColorConstants.suggestedBorder,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(27, 15, 27, 14),
                                  child: SvgPicture.asset(
                                      suggestCityList[index].cityUrl),
                                ),
                                FestaText(
                                  title: suggestCityList[index].cityName,
                                  fontSize: 12,
                                ),
                                const SizedBox(height: 7)
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 10);
                        },
                        itemCount: suggestCityList.length),
                  )
                },
              ],
            ),
          ),
        ),
      ),
    );
  }
}
