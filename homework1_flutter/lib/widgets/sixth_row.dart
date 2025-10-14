import 'package:flutter/material.dart';

class SixthRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 195,
          height: 50,
          color: const Color.fromARGB(255, 173, 244, 204),
        ),
 
        Container(
          width: 195,
          height: 50,
          color: const Color.fromARGB(255, 35, 218, 157),
        ),
      ],
    );
  }
}
