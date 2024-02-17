import 'package:flutter/material.dart';
import 'package:festa/infrastructure/commons/constants/image_constant.dart';
import 'package:festa/ui/screen/ticket_screen.dart/widget/ticket_card.dart';

class TicketHistory extends StatelessWidget {
  const TicketHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            HistoryTicketCard(
              imgPath: ImageConstants.anujjain,
              hostName: "Anuj Jain",
              gradient: [Color(0xffBD4C80), Color(0xff983C75)],
            ),
            Padding(
              padding: EdgeInsets.only(top: 66),
              child: HistoryTicketCard(
                imgPath: ImageConstants.taylor,
                hostName: "Tylor Swift",
                gradient: [Color(0xff8F50DF), Color(0xff15267B)],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 132),
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
              padding: EdgeInsets.only(top: 66),
              child: HistoryTicketCard(
                imgPath: ImageConstants.anson,
                hostName: "Anson Seabra",
                gradient: [Color(0xff018DE9), Color(0xff0443CD)],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
