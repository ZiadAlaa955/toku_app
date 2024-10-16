import 'package:flutter/material.dart';
import 'package:toku_app/Models/item_model.dart';
import 'package:toku_app/Widgets/item.dart';
import 'package:toku_app/constants.dart';

class NumbersView extends StatelessWidget {
  const NumbersView({super.key});
  static String id = 'numbersView';
  final List<ItemModel> itemsList = const [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      jpText: 'Ichi',
      enText: 'One',
      sound: 'sounds/numbers/number_one_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpText: 'Ni',
      enText: 'Two',
      sound: 'sounds/numbers/number_two_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jpText: 'San',
      enText: 'Three',
      sound: 'sounds/numbers/number_three_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      jpText: 'Shi',
      enText: 'Four',
      sound: 'sounds/numbers/number_four_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      jpText: 'Go',
      enText: 'Five',
      sound: 'sounds/numbers/number_five_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      jpText: 'Roku',
      enText: 'Six',
      sound: 'sounds/numbers/number_six_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      jpText: 'Sebun',
      enText: 'Seven',
      sound: 'sounds/numbers/number_seven_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      jpText: 'Hachi',
      enText: 'Eight',
      sound: 'sounds/numbers/number_eight_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_nine.png',
      jpText: 'Ku',
      enText: 'Nine',
      sound: 'sounds/numbers/number_nine_sound.mp3',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      jpText: 'Ju',
      enText: 'Ten',
      sound: 'sounds/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text(
          'Numbers',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: itemsList.length,
        itemBuilder: (context, index) {
          return Item(items: itemsList[index]);
        },
      ),
    );
  }
}
