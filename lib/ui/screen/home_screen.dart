import 'dart:ui';

import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/infrastructure/commons/constants/image_constant.dart';
import 'package:festa/ui/common/button_widget/download_button.dart';
import 'package:festa/ui/common/button_widget/primary_button.dart';
import 'package:festa/ui/common/button_widget/share_button.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const int currentInd = 2;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: FestaText(
                  title: "Your tickets",
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                  titleTextAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    isPrimary: true,
                    title: "Upcoming",
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CustomButton(
                    isPrimary: false,
                    title: "History",
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  HistoryTicketCard(
                    imgPath: ImageConstants.anujjain,
                    hostName: "Anuj Jain",
                    gradient: [Color(0xffBD4C80), Color(0xff983C75)],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 66),
                    child: HistoryTicketCard(
                      imgPath: ImageConstants.taylor,
                      hostName: "Tylor Swift",
                      gradient: [Color(0xff8F50DF), Color(0xff15267B)],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 132),
                    child: HistoryTicketCard(
                      imgPath: ImageConstants.shinoda,
                      hostName: "Mike Shinoda",
                      gradient: [Color(0xFF2AC8A5), Color(0xFF01563B)],
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 18, right: 19),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: ColorConstants.grey900,
                    width: 2.42,
                  ),
                  borderRadius: BorderRadius.circular(24.21),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 19.37,
                            left: 24.74,
                            right: 8.95,
                            bottom: 8.21,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 48.42,
                                height: 48.42,
                                decoration: BoxDecoration(
                                  color: ColorConstants.primary,
                                  borderRadius: BorderRadius.circular(76.26),
                                ),
                              ),
                              SizedBox(width: 9.69),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FestaText(title: "Anuj Jain", fontSize: 18),
                                  FestaText(
                                    fontSize: 12,
                                    title: "India Tour 2023",
                                    fontWeight: FontWeight.w400,
                                    titleColor: ColorConstants.grey800,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  FestaText(
                                    title: "03-04-2023",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    titleColor: ColorConstants.grey800,
                                  ),
                                  FestaText(
                                    fontSize: 14,
                                    title: "11:00 AM - 2:00 PM",
                                    fontWeight: FontWeight.w400,
                                    titleColor: ColorConstants.grey800,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 32, right: 30),
                            child: Image.asset(
                              ImageConstants.anujJainp,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            bottom: 0.58,
                            left: .42,
                            right: .42,
                            top: 25,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstants.grey850,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                10.63, 10.11, 10.63, 8.97),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConstants.location),
                                    SizedBox(width: 4.84),
                                    FestaText(
                                      title: "Mumbai Stadium, Mumbai, India",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                                SizedBox(width: 9.68),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConstants.location),
                                    SizedBox(width: 4.84),
                                    FestaText(
                                      title: "03-04-2023, 11:00am - 2:00pm",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                                SizedBox(width: 9.68),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConstants.ticket),
                                    SizedBox(width: 4.84),
                                    FestaText(
                                      title: "Row: 2",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    SizedBox(width: 29.05),
                                    FestaText(
                                      title: "Seats: 09,10",
                                      fontSize: 14.5,
                                      fontWeight: FontWeight.w500,
                                    )
                                  ],
                                ),
                                SizedBox(width: 8.47),
                                Row(
                                  children: [
                                    SvgPicture.asset(ImageConstants.ticket),
                                    SizedBox(width: 4.84),
                                    FestaText(
                                      title: "₹10,000",
                                      fontSize: 19.37,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    SizedBox(width: 6.05),
                                    FestaText(
                                      title: "₹15,000",
                                      fontSize: 14.5,
                                      fontWeight: FontWeight.w500,
                                      textDecoration:
                                          TextDecoration.lineThrough,
                                      titleColor: ColorConstants.grey700,
                                    )
                                  ],
                                ),
                                SizedBox(width: 8.47),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.11),
                                  child: SvgPicture.asset(
                                    ImageConstants.barcode,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 21.37,
                          height: 42.37,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                            border: Border.all(
                              color: ColorConstants.grey900,
                              width: 2.42,
                            ),
                          ),
                        ),
                        Container(
                          width: 21.37,
                          height: 42.37,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50),
                            ),
                            border: Border.all(
                              color: ColorConstants.grey900,
                              width: 2.42,
                            ),
                          ),
                        ),

                        //
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 20, bottom: 28),
                child: Row(
                  children: [
                    DownloadButton(),
                    SizedBox(width: 30),
                    ShareButton()
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 50),
            child: Container(
              padding: EdgeInsets.only(
                top: 12,
                left: 26,
                right: 26,
                bottom: 3,
              ),
              child: Container(
                  height: 46,
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  decoration: BoxDecoration(
                    color: ColorConstants.grey900,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(ImageConstants.home,
                              color:
                                  currentInd == 0 ? Color(0xffFF1759) : null),
                          SizedBox(
                            height: 9,
                          ),
                          Container(
                            height: 2,
                            width: 26,
                            decoration: const BoxDecoration(
                              gradient: currentInd == 0
                                  ? LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFFFF1759),
                                        Color(0xFFBF0036)
                                      ],
                                    )
                                  : null,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                topRight: Radius.circular(100),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(ImageConstants.explore,
                              color:
                                  currentInd == 1 ? Color(0xffFF1759) : null),
                          SizedBox(
                            height: 9,
                          ),
                          Container(
                            height: 2,
                            width: 26,
                            decoration: const BoxDecoration(
                              gradient: currentInd == 1
                                  ? LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFFFF1759),
                                        Color(0xFFBF0036)
                                      ],
                                    )
                                  : null,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                topRight: Radius.circular(100),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(
                            ImageConstants.ticketNav,
                            color: currentInd == 2 ? Color(0xffFF1759) : null,
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Container(
                            height: 2,
                            width: 26,
                            decoration: const BoxDecoration(
                              gradient: currentInd == 2
                                  ? LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFFFF1759),
                                        Color(0xFFBF0036)
                                      ],
                                    )
                                  : null,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                topRight: Radius.circular(100),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: SizedBox(
                              height: 24,
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/1f07/f85d/f4e9131dfbb5d832be5dd2fb2b7bc270?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ANi6eZ0GqGrX8u2SeACml6dwc6FwY4G9WUTJtz-qGUlvm3FBJlthAiJZhww405mgwh-Ev5k20eCc49ADZDr6hEKe0zdcY1SE9hjhKKh6rHCVFkVde9dQfZ8uEMAAyftBy0JzkGdM1tylgkqeofbyQXjd3YhJ0e0xRXy9MmBPaq09v1FwB1efdWRMLfG28BZ6zLU7pG2clFttGjbWQdbd2q8sJk0h~udgHAjEebyrct4w~emLb~jQ3lCIpVEuvUx5oGu3IjIPbOCSznFNCb0rrI~VY9tUp3CZfV2zbeJlYANaUyLYE2FIvV5oJ6yhb6xbyI7aYJyTvUX~UQ2TwaAkGg__",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 9,
                          ),
                          Container(
                            height: 2,
                            width: 26,
                            decoration: const BoxDecoration(
                              gradient: currentInd == 3
                                  ? LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xFFFF1759),
                                        Color(0xFFBF0036)
                                      ],
                                    )
                                  : null,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(100),
                                topRight: Radius.circular(100),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

class HistoryTicketCard extends StatelessWidget {
  final String imgPath;
  final String hostName;
  final List<Color> gradient;
  const HistoryTicketCard({
    super.key,
    required this.imgPath,
    required this.hostName,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          padding: EdgeInsets.fromLTRB(12, 12, 12, 27.76),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: gradient,
              )),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imgPath,
                    height: 102,
                    width: 102,
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 7),
                      FestaText(title: hostName, fontSize: 18),
                      SizedBox(height: 2),
                      FestaText(
                        title: "India Tour 2023",
                        fontSize: 12,
                        titleColor: ColorConstants.primary.withOpacity(0.7),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          SvgPicture.asset(
                            ImageConstants.location,
                            height: 16,
                            width: 16,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          FestaText(
                            title: "03-04-2023, 11:00am - 2:00pm",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          )
                        ],
                      ),
                      SizedBox(width: 4),
                      Row(
                        children: [
                          SvgPicture.asset(
                            ImageConstants.location,
                            height: 16,
                            width: 16,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          FestaText(
                            title: "Mumbai Stadium, Mumbai, India",
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 13),
              SvgPicture.asset(
                ImageConstants.barcode,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Container(
                    width: 6,
                    height: 12,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        )
      ],
    );
  }
}
