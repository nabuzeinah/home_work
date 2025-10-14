import 'package:flutter/material.dart';

class SecondRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  color: const Color.fromARGB(255, 221, 219, 219),
                ),
                Container(
                  width: 350,
                  height: 30,
                  color: Color.fromARGB(255, 221, 219, 219),
                ),                
              ],
            );
  }
}
