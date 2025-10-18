import 'package:flutter/material.dart';
import 'package:homework2_flutter/widgets/featureWidget.dart';

class FeaturesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text(
            'Features',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          FeatureWidget(
            color: const Color.fromARGB(255, 233, 226, 240),
            icon: Icon(Icons.speed, color: Colors.deepPurple, size: 30),
            title: 'Fast Performance',
            description: 'Lightning fast app performance',
          ),
          FeatureWidget(
            color: const Color.fromARGB(255, 193, 213, 251),
            icon: Icon(Icons.security, color: Colors.blue, size: 30),
            title: 'Secure',
            description: 'Your data is safe with Us .........',
          ),
          FeatureWidget(
            color:  const Color.fromARGB(255, 243, 229, 207),
            icon: Icon(Icons.color_lens, color: Colors.orange, size: 30),
            title: 'Beautiful UI',
            description: 'Modern and Clean Design .......',
          ),
        ],
      ),
    );
  }
}
