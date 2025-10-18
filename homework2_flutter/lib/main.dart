import 'package:flutter/material.dart';
import 'package:homework2_flutter/widgets/featuresSection.dart';
import 'package:homework2_flutter/widgets/headerSection.dart';
import 'package:homework2_flutter/widgets/quickStats.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[60],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderSection(),
            QuickStatsSection(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: FeaturesSection(),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: [
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('Settings',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                ),
                    Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('Profile', 
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                  ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}