import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: ColorConstants.grey900,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorConstants.primary,
                width: 2,
              ),
            ),
          ),
          FestaText(
            title: "Share",
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorConstants.primary,
                width: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
