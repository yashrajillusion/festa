import 'package:festa/infrastructure/commons/constants/image_constant.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 178,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFFF1759), Color(0xFFBF0036)],
        ),
        borderRadius: BorderRadius.circular(6.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(ImageConstants.download),
          const SizedBox(width: 10),
          FestaText(
            title: "Download",
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ],
      ),
    );
  }
}
