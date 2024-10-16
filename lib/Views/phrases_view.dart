import 'package:flutter/material.dart';
import 'package:toku_app/Models/item_model.dart';
import 'package:toku_app/Widgets/item.dart';
import 'package:toku_app/constants.dart';

class PhrasesView extends StatelessWidget {
  const PhrasesView({super.key});
  static String id = 'phrasesView';
  final List<ItemModel> itemsList = const [
    ItemModel(
      jpname: 'Kimasu ka',
      enName: 'Are you coming ?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
    ItemModel(
      jpname: 'Kodoku suru koto o wasurenaide',
      enName: 'Dont forget to subscribe',
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    ItemModel(
      jpname: 'SanGo kibun wa ikagadesu ka',
      enName: 'How are you feeling',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    ItemModel(
      jpname: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    ItemModel(
      jpname: 'Watashi wa puroguramingu ga \n daisukidesu',
      enName: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    ItemModel(
      jpname: 'Puoguraming wa kantandesu',
      enName: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    ItemModel(
      jpname: 'Namae wa nadesu ka',
      enName: 'What is your name ?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    ItemModel(
      jpname: 'Doko ni iku no',
      enName: 'Where are you going ?',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    ItemModel(
      jpname: 'Hai imamukatteimasu',
      enName: 'Yes I\'m coming',
      sound: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text(
          'Phrases',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: itemsList.length,
        itemBuilder: (context, index) {
          return ItemInfo(
            items: itemsList[index],
            color: kPhrasesViewColor,
          );
        },
      ),
    );
  }
}
