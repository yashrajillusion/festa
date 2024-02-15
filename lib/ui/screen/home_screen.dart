import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/infrastructure/commons/constants/image_constant.dart';
import 'package:festa/ui/common/bottom_bar/custom_navbar.dart';
import 'package:festa/ui/common/slider/slider.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:festa/ui/screen/home_screen/choose_location_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    InkWell(
                      onTap: () {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return ChooseLocation();
                          },
                        );
                      },
                      child: SvgPicture.asset(ImageConstants.search),
                    ),
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
