import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  double? size;
  Color? color;
  FontWeight? fontWeight;
  final Alignment alignment;

  CustomText({
    Key? key,
     this.text='',
    this.size=16,
    this.color=Colors.black,
    this.fontWeight=FontWeight.normal,
    this.alignment=Alignment.topLeft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:alignment,
      child: Text(
        text,
        style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color),
      ),
    );
  }
}
