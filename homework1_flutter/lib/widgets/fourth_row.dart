import 'package:flutter/material.dart';

class FourthRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              width: 180,
              height: 50,
              color: const Color.fromARGB(255, 144, 218, 146),
            ),
            Container(height: 5),
            Container(
              width: 180,
              height: 50,
              color: const Color.fromARGB(255, 144, 218, 146),
            ),
          ],
        ),
        Container(
          width: 5,
        ),
        Container(
          width: 90,
          height: 105,
          color: const Color.fromARGB(255, 246, 192, 127),
        ),
        Container(
          width: 90,
          height: 105,
          color: const Color.fromARGB(255, 246, 192, 127),
        ),
      ],
    );
  }
}
