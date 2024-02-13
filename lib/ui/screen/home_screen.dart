import 'package:festa/infrastructure/commons/constants/color_constant.dart';
import 'package:festa/ui/common/button_widget/primary_button.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
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
            )
          ],
        ),
      ),
    );
  }
}
