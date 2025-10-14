import 'package:flutter/material.dart';

class FifthRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 90, 
          color: const Color.fromARGB(255, 249, 228, 252),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 90,
              width: 90,
              color: const Color.fromARGB(255, 223, 185, 229),
            ),
            Column(
              children: [
                Container(
                  height: 40,
                  width: 100,
                  color: const Color.fromARGB(255, 223, 185, 229),
                ),
                Container(
                  height: 10,
                  width: 100,
                  color: const Color.fromARGB(255, 227, 213, 230),
                ),
                Container(
                  height: 40,
                  width: 100,
                  color: const Color.fromARGB(255, 223, 185, 229),
                ),
              ],
            ),
            Container(
              height: 90,
              width: 90,
              color: const Color.fromARGB(255, 223, 185, 229),
            ),
            Container(
              height: 90,
              width: 70,
            ),
          ],
        ),
      ],
    );
  }
}
