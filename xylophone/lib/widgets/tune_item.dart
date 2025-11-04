import 'package:flutter/material.dart';
import 'package:xylophone/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  final TuneModel tune;
  TuneItem({super.key, required this.tune});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(width: double.infinity, color: tune.color),
        onTap: () {
    
          tune.playSound();
        },
      ),
    );
  }
}
