import 'package:flutter/material.dart';

class StarRatingDifficulty extends StatelessWidget {
  final int difficulty;
  static int maxDifficulty = 5;

  const StarRatingDifficulty({
    Key? key,
    required this.difficulty
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> starColors = [];

    for (int i = 0; i < maxDifficulty; i++) {
      starColors.add(i < difficulty ? Colors.black87 : Colors.black12);
    }

    return Row(
      children: starColors.map((color) {
        return Icon(Icons.star, size: 15, color: color);
      }).toList(),
    );
  }
}

