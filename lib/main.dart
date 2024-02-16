import 'package:festa/festa_routes.dart';
import 'package:festa/ui/screen/home_screen/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const MaterialApp(
        title: 'Flutter Demo',
        onGenerateRoute: Routers.generateRoute,
        initialRoute: '/',
      ),
    );
  }
}
