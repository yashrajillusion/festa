import 'package:flutter/material.dart';
import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/infrastructure/commons/constants/image_constant.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:festa/ui/common/button_widget/download_button.dart';
import 'package:festa/ui/common/button_widget/share_button.dart';

class TicketDetails extends StatelessWidget {
  const TicketDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 0, left: 18, right: 19),
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
                        const SizedBox(width: 9.69),
                        const Column(
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
                        const Spacer(),
                        const Column(
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
                    margin: const EdgeInsets.only(
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
                      padding:
                          const EdgeInsets.fromLTRB(10.63, 10.11, 10.63, 8.97),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(ImageConstants.location),
                              const SizedBox(width: 4.84),
                              const FestaText(
                                title: "Mumbai Stadium, Mumbai, India",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          const SizedBox(width: 9.68),
                          Row(
                            children: [
                              SvgPicture.asset(ImageConstants.location),
                              const SizedBox(width: 4.84),
                              const FestaText(
                                title: "03-04-2023, 11:00am - 2:00pm",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          const SizedBox(width: 9.68),
                          Row(
                            children: [
                              SvgPicture.asset(ImageConstants.ticket),
                              const SizedBox(width: 4.84),
                              const FestaText(
                                title: "Row: 2",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              const SizedBox(width: 29.05),
                              const FestaText(
                                title: "Seats: 09,10",
                                fontSize: 14.5,
                                fontWeight: FontWeight.w500,
                              )
                            ],
                          ),
                          const SizedBox(width: 8.47),
                          Row(
                            children: [
                              SvgPicture.asset(ImageConstants.ticket),
                              const SizedBox(width: 4.84),
                              const FestaText(
                                title: "₹10,000",
                                fontSize: 19.37,
                                fontWeight: FontWeight.w700,
                              ),
                              const SizedBox(width: 6.05),
                              const FestaText(
                                title: "₹15,000",
                                fontSize: 14.5,
                                fontWeight: FontWeight.w500,
                                textDecoration: TextDecoration.lineThrough,
                                titleColor: ColorConstants.grey700,
                              )
                            ],
                          ),
                          const SizedBox(width: 8.47),
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
                      borderRadius: const BorderRadius.only(
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
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      ),
                      border: Border.all(
                        color: ColorConstants.grey900,
                        width: 2.42,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        _downloadShare()
      ],
    );
  }
}

Padding _downloadShare() {
  return const Padding(
    padding: EdgeInsets.only(left: 16, top: 20, bottom: 28),
    child: Row(
      children: [DownloadButton(), SizedBox(width: 30), ShareButton()],
    ),
  );
}
