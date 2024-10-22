import 'package:flutter/material.dart';
import 'package:stacked_state_management_demo/app/app.locator.dart';
import 'package:stacked_state_management_demo/screens/home/home.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stacked State Management Demo App',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
            useMaterial3: true),
        home: const HomeView());
  }
}
