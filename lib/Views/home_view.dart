import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF3D8),
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        centerTitle: true,
        title: const Text(
          'Toku App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {},
            title: 'Numbers',
            color: const Color(0xffF89430),
          ),
          Category(
            onTap: () {},
            title: 'Familymembers',
            color: const Color(0xff517F30),
          ),
          Category(
            onTap: () {},
            title: 'Colors',
            color: const Color(0xff7D40A2),
          ),
          Category(
            onTap: () {},
            title: 'Phrases',
            color: const Color(0xff46A4CA),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.title,
      required this.color,
      required this.onTap});
  final String title;
  final Color color;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
