import 'package:festa/ui/common/bottom_bar/custom_navbar.dart';
import 'package:festa/ui/common/text_widget/festa_text.dart';
import 'package:festa/ui/screen/home_screen/home_bloc/home_bloc.dart';
import 'package:festa/ui/screen/home_screen/home_screen.dart';
import 'package:festa/ui/screen/ticket_screen.dart/ticket_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: const [
              HomeScreen(),
              Center(
                  child: FestaText(
                title: "Upcoming section",
                fontSize: 16,
              )),
              TicketScreen(),
              Center(
                  child: FestaText(
                title: "Upcoming section",
                fontSize: 16,
              )),
            ][state.currentNavbarIndex],
            bottomNavigationBar:
                CustomBottomNavBar(currentInd: state.currentNavbarIndex),
          );
        },
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
