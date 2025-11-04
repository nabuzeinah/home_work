import 'package:flutter/material.dart';
import 'package:xylophone/models/tune_model.dart';
import 'package:xylophone/widgets/tune_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Color(0XFF253238),
          title: Text(
            'Flutter Xylophone',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: 
            getTunes().map((tune) => TuneItem(tune: tune)).toList(),
          
        ),
        ),
        );
  }

  List<TuneModel> getTunes() {
    return [
      TuneModel(color: Colors.red, sound: 'note1.wav'),
      TuneModel(color: Colors.orange, sound: 'note2.wav'),
      TuneModel(color: Colors.yellow, sound: 'note3.wav'),
      TuneModel(color: Colors.lightGreen, sound: 'note4.wav'),
      TuneModel(color: Colors.green, sound: 'note5.wav'),
      TuneModel(color: Colors.blue, sound: 'note6.wav'),
      TuneModel(color: Colors.purple, sound: 'note7.wav'),
    ];
  }
}
