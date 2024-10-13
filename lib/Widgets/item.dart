import 'package:flutter/material.dart';
import 'package:toku_app/Models/item_model.dart';
import 'package:toku_app/constants.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kNumbersViewColor,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFDF2DA),
            child: Image.asset(
              itemModel.image,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text(
                  itemModel.jpText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  itemModel.enText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
