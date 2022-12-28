import 'package:flutter/material.dart';

class FiveStarts extends StatelessWidget {
  const FiveStarts({Key? key, required this.difficultyLevel}) : super(key: key);
  final int difficultyLevel;

  @override
  Widget build(BuildContext context) {
    return Row(children: fiveStars());
  }

  List<Widget> fiveStars() {
    List<Widget> stars = [];
    for (int i = 1; i <= 5; i++) {
      stars.add(
        Icon(Icons.star,
            size: 15,
            color:
                (difficultyLevel >= i) ? Colors.green[500] : Colors.green[100]),
      );
    }
    return stars;
  }
}
