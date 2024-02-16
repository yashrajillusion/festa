import 'package:festa/infrastructure/commons/constants/route_constant.dart';
import 'package:festa/ui/screen/home.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstant.initialRoute:
      case RouteConstant.home:
        return MaterialPageRoute(builder: (_) => const Home());
      default:
        return MaterialPageRoute(builder: (_) => Container());
    }
  }
}
