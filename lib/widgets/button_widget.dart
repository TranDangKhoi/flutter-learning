import "package:flutter/material.dart";
import 'package:flutter_learning/constants/color_pallete.dart';
import 'package:flutter_learning/widgets/app_text.dart';

class ButtonNext extends StatelessWidget {
  double? width;
  bool? isResponsive;
  double? height;
  ButtonNext({
    Key? key,
    this.width,
    this.height,
    this.isResponsive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width:
            isResponsive! ? MediaQuery.of(context).size.width * width! : width,
        height: isResponsive!
            ? MediaQuery.of(context).size.height * height!
            : height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: Gradients.defaultGradientBackground,
        ),
        child:
            const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.keyboard_double_arrow_right_outlined,
              size: 14, color: Colors.white),
          Icon(Icons.keyboard_double_arrow_right_outlined,
              size: 14, color: Colors.white),
          Icon(Icons.keyboard_double_arrow_right_outlined,
              size: 14, color: Colors.white)
        ]));
  }
}
