import 'package:flutter/material.dart';

class OptionWidget extends StatefulWidget {
  String text;
  bool isMultiOption;
  bool isSelected;
  VoidCallback onTapOneOption;

  OptionWidget({
    super.key,
    required this.text,
    required this.isSelected,
    required this.isMultiOption,
    required this.onTapOneOption,
  });

  @override
  State<OptionWidget> createState() => _OptionWidgetState();
}

class _OptionWidgetState extends State<OptionWidget> {
  Color? widColor;
  Gradient? widGradient;
  Color? radioButtonColor;
  DecorationImage? radioImage;

  @override
  Widget build(BuildContext context) {
    if (widget.isSelected) {
      widColor = null;
      widGradient = LinearGradient(
        begin: Alignment(0.00, 1.00),
        end: Alignment(1.00, 0.17),
        colors: [const Color(0xFFB8B2FF), const Color(0xFFC6C2F7)],
      );
      if (!widget.isMultiOption) {
        radioButtonColor = const Color(0xFF2B0062);
        radioImage = DecorationImage(
          image: AssetImage('assets/images/check1.png'),
          fit: BoxFit.contain,
        );
      } else {
        radioButtonColor = null;
        radioImage =
            radioImage = DecorationImage(
              image: AssetImage('assets/images/check2.png'),
              fit: BoxFit.contain,
            );
        ;
      }
    } else {
      widColor = Colors.white;
      widGradient = null;
      radioButtonColor = null;
      radioImage = null;
    }

    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (widget.isSelected) {
              widget.isSelected = false;

            } else {
              widget.isSelected = true;
              widget.onTapOneOption();
            }
            setState(() {});
            
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            decoration: ShapeDecoration(
              gradient: widGradient,
              color: widColor /* MAINE-WHITE */,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 16,
              children: [
                Container(
                  width: 19,
                  height: 19,
                  padding: const EdgeInsets.all(5),
                  decoration: ShapeDecoration(
                    color: radioButtonColor,
                    image: radioImage,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: const Color(0xFF2B0062) /* MAINE-VIOLET */,
                      ),
                      borderRadius: BorderRadius.circular(9.50),
                    ),
                  ),
                ),
                Text(
                  widget.text,
                  style: TextStyle(
                    color: const Color(0xFF2B0062) /* MAINE-VIOLET */,
                    fontSize: 16,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
