import 'dart:ui';

class ItemModel {
  final String? image;
  final String jpname;
  final String enName;
  final String sound;

  const ItemModel({
    this.image,
    required this.jpname,
    required this.enName,
    required this.sound,
  });
}
