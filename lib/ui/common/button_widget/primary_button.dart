import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final bool isPrimary;
  final String title;
  const CustomButton({super.key, required this.isPrimary, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isPrimary ? null : ColorConstants.grey900,
        gradient: isPrimary
            ? LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFFF1759), Color(0xFFBF0036)],
              )
            : null,
        borderRadius: BorderRadius.circular(6.0),
      ),
      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
      child: FestaText(
        title: title,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
