import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/Models/item_model.dart';
import 'package:toku_app/constants.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.items});
  final ItemModel items;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kNumbersViewColor,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFDF2DA),
            child: Image.asset(
              items.image,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Text(
                  items.jpText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  items.enText,
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
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(items.sound));
              },
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
