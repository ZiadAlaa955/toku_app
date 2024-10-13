import 'package:flutter/material.dart';
import 'package:toku_app/Views/home_view.dart';
import 'package:toku_app/Views/numbers_view.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => const HomeView(),
        NumbersView.id: (context) => const NumbersView(),
      },
      initialRoute: HomeView.id,
    );
  }
}
