
import 'package:flutter/material.dart';
import 'package:homework1_flutter/widgets/blank.dart';
import 'package:homework1_flutter/widgets/fifth_row.dart';
import 'package:homework1_flutter/widgets/first_row.dart';
import 'package:homework1_flutter/widgets/fourth_row.dart';
import 'package:homework1_flutter/widgets/second_row.dart';
import 'package:homework1_flutter/widgets/seventh_row.dart';
import 'package:homework1_flutter/widgets/sixth_row.dart';
import 'package:homework1_flutter/widgets/third_row.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FirstRow(),
            SecondRow(),
            ThirdRow(),
            FourthRow(),
            FifthRow(),
            SixthRow(),
            SeventhRow(),
            Blank(),
          ],
        ),
      ),
    );
  }
}
