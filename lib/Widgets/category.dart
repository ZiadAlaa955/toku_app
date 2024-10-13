import 'package:flutter/material.dart';

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
