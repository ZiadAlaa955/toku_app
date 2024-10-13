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
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpText: 'Ni',
      enText: 'Two',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jpText: 'San',
      enText: 'Three',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      jpText: 'Shi',
      enText: 'Four',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      jpText: 'Go',
      enText: 'Five',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      jpText: 'Roku',
      enText: 'Six',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      jpText: 'Sebun',
      enText: 'Seven',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      jpText: 'Hachi',
      enText: 'Eight',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_nine.png',
      jpText: 'Ku',
      enText: 'Nine',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      jpText: 'Ju',
      enText: 'Ten',
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
