import 'package:flutter/material.dart';
import 'package:toku_app/Views/colors_view.dart';
import 'package:toku_app/Views/family_members_view.dart';
import 'package:toku_app/Views/numbers_view.dart';
import 'package:toku_app/Views/phrases_view.dart';
import 'package:toku_app/Widgets/category.dart';
import 'package:toku_app/constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF3D8),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text(
          'Toku App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.pushNamed(context, NumbersView.id);
            },
            title: 'Numbers',
            color: kNumbersViewColor,
          ),
          Category(
            onTap: () {
              Navigator.pushNamed(context, FamilyMembersView.id);
            },
            title: 'Family members',
            color: kFamilyViewColor,
          ),
          Category(
            onTap: () {
              Navigator.pushNamed(context, ColorsView.id);
            },
            title: 'Colors',
            color: kColorsViewColor,
          ),
          Category(
            onTap: () {
              Navigator.pushNamed(context, PhrasesView.id);
            },
            title: 'Phrases',
            color: kPhrasesViewColor,
          ),
        ],
      ),
    );
  }
}
