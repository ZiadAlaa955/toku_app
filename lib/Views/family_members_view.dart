import 'package:flutter/material.dart';
import 'package:toku_app/Models/item_model.dart';
import 'package:toku_app/Widgets/item.dart';
import 'package:toku_app/constants.dart';

class FamilyMembersView extends StatelessWidget {
  const FamilyMembersView({super.key});
  static String id = 'familyView';
  final List<ItemModel> itemsList = const [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jpname: 'Chichioya',
      enName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      jpname: 'Hahaoya',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      jpname: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpname: 'Musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpname: 'Ojisan',
      enName: 'Grand father',
      sound: 'sounds/family_members/grand father.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jpname: 'Sobo',
      enName: 'Grand mother',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jpname: 'Nisan',
      enName: 'Older brother',
      sound: 'sounds/family_members/older bother.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jpname: 'Ane',
      enName: 'Older sister',
      sound: 'sounds/family_members/older sister.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpname: 'Otouto',
      enName: 'Younger brother',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpname: 'Imouto',
      enName: 'Younger sister',
      sound: 'sounds/family_members/younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: const Text(
          'Family Members',
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
            color: kFamilyViewColor,
          );
        },
      ),
    );
  }
}
