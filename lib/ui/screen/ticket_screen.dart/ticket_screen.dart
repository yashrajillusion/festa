import 'package:flutter/material.dart';
import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/infrastructure/commons/constants/image_constant.dart';
import 'package:festa/ui/common/button_widget/download_button.dart';
import 'package:festa/ui/common/button_widget/primary_button.dart';
import 'package:festa/ui/common/button_widget/share_button.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:festa/ui/screen/ticket_screen.dart/widget/ticket_card.dart';
import 'package:flutter_svg/svg.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          SizedBox(height: 55),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              HistoryTicketCard(
                imgPath: ImageConstants.chester,
                hostName: "Chester Bennington",
                gradient: [Color(0xffDC0208), Color(0xff670178)],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 66),
                child: HistoryTicketCard(
                  imgPath: ImageConstants.anson,
                  hostName: "Anson Seabra",
                  gradient: [Color(0xff018DE9), Color(0xff0443CD)],
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
                                  textDecoration: TextDecoration.lineThrough,
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
              children: [DownloadButton(), SizedBox(width: 30), ShareButton()],
            ),
          ),
        ],
      ),
    );
  }
}
