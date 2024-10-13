import 'package:flutter/material.dart';
import 'package:toku_app/Models/item_model.dart';
import 'package:toku_app/Widgets/item.dart';
import 'package:toku_app/constants.dart';

class NumbersView extends StatelessWidget {
  const NumbersView({super.key});
  static String id = 'numbersView';
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
      body: ListView(
        children: [
          Item(
            itemModel: ItemModel(
              image: 'assets/images/numbers/number_one.png',
              jpText: 'Ichi',
              enText: 'One',
            ),
          ),
        ],
      ),
    );
  }
}
