import 'package:flutter/material.dart';
import 'package:toku_app/Models/item_model.dart';
import 'package:toku_app/Widgets/item.dart';
import 'package:toku_app/constants.dart';

class ColorsView extends StatelessWidget {
  const ColorsView({super.key});
  static String id = 'colorsView';
  final List<ItemModel> itemsList = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      jpname: 'Buraku',
      enName: 'Black',
      sound: 'sounds/colors/black.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      jpname: 'Chairo',
      enName: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpname: 'Hokori ppoi kiiro',
      enName: 'Dusty yellow',
      sound: 'sounds/colors/dusty yellow.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      jpname: 'Gure',
      enName: 'Gray',
      sound: 'sounds/colors/gray.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      jpname: 'Midori',
      enName: 'Green',
      sound: 'sounds/colors/green.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      jpname: 'Aka',
      enName: 'Res',
      sound: 'sounds/colors/red.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      jpname: 'Shiroi',
      enName: 'White',
      sound: 'sounds/colors/white.wav',
    ),
    ItemModel(
      image: 'assets/images/colors/yellow.png',
      jpname: 'Kiiro',
      enName: 'Yellow',
      sound: 'sounds/colors/yellow.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: itemsList.length,
        itemBuilder: (context, index) {
          return Item(
            items: itemsList[index],
            color: kColorsViewColor,
          );
        },
      ),
    );
  }
}
