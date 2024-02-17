import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final bool isPrimary;
  final String title;
  final Function()? onClick;
  const CustomButton(
      {super.key, required this.isPrimary, required this.title, this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
          color: isPrimary ? null : ColorConstants.grey900,
          gradient: isPrimary
              ? const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFFFF1759), Color(0xFFBF0036)],
                )
              : null,
          borderRadius: BorderRadius.circular(6.0),
        ),
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
        child: FestaText(
          title: title,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
