import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/infrastructure/commons/constants/image_constant.dart';
import 'package:festa/ui/common/bottom_bar/custom_navbar.dart';
import 'package:festa/ui/common/slider/slider.dart';
import 'package:festa/ui/common/text_fields/text_fields_widget.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const int currentInd = 2;
    const List<String> partyUrl = [
      ImageConstants.techno,
      ImageConstants.bollywood,
      ImageConstants.ladiesNight,
      ImageConstants.edm,
      ImageConstants.techno,
      ImageConstants.bollywood,
      ImageConstants.ladiesNight,
      ImageConstants.edm,
    ];

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

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Row(
                  children: [
                    SvgPicture.asset(ImageConstants.locationRed),
                    const SizedBox(width: 8),
                    const FestaText(
                      title: "Indira Nagar",
                      fontSize: 12,
                      titleColor: ColorConstants.grey0,
                    ),
                    const Spacer(),
                    SvgPicture.asset(ImageConstants.search),
                    const SizedBox(width: 16),
                    SvgPicture.asset(ImageConstants.notification),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: FestaText(
                  title: "Hey James, Let’s party!",
                  fontSize: 14,
                  titleColor: ColorConstants.grey600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FestaText(
                  title: "Pick your experience",
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 78,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.separated(
                  itemCount: partyUrl.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      partyUrl[index],
                      height: 78,
                      width: 78,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 12);
                  },
                ),
              ),
              Container(
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
                    const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FestaText(
                            title: "Choose your Location",
                            fontSize: 18,
                          ),
                          Icon(
                            Icons.close,
                            color: ColorConstants.primary,
                            size: 24,
                          )
                        ],
                      ),
                    ),
                    TextFormFieldWidget(
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
                      suffixIcon: const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Icon(
                          Icons.close,
                          color: ColorConstants.grey600,
                          size: 24,
                        ),
                      ),
                      textColor: ColorConstants.grey99,
                      fillColor: Colors.black,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 8),
                      borderRadius: 10,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
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
                                    padding: const EdgeInsets.fromLTRB(
                                        27, 15, 27, 14),
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
                  ],
                ),
              ),
              const SizedBox(height: 350),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SliderScreen(),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(currentInd: currentInd),
      ),
    );
  }
}

class SuggestedCityModal {
  final String cityUrl;
  final String cityName;

  SuggestedCityModal({
    required this.cityUrl,
    required this.cityName,
  });
}
