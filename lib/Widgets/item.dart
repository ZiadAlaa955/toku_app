import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Models/item_model.dart';
import 'package:toku_app/Widgets/item_info.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.items, required this.color});
  final ItemModel items;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFDF2DA),
            child: Image.asset(
              items.image!,
              height: 105,
            ),
          ),
          Expanded(
            child: ItemInfo(
              items: items,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
