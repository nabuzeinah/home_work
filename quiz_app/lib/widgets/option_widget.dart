import 'package:flutter/material.dart';

class OptionWidget extends StatefulWidget {
  String title;
  OptionWidget({super.key, required this.title});

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  String? _selectedOption;
  Color? selectedColor = Colors.white;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: selectedColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: RadioListTile<String>(
        title: Text(widget.title),
        value: 'Option A',
        groupValue: _selectedOption,
        onChanged: (String? value) {
          
          _selectedOption = value;
          selectedColor = Color(0XFFBAB6F0);
            _selectedOption = value;
         
          setState(() {
           
          });
        },
      ),
    );
  }
}
