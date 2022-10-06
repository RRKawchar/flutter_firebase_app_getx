import 'package:flutter/material.dart';
import 'package:flutter_project_using_getx/consts/colors.dart';
import 'package:flutter_project_using_getx/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;

  CustomButton({Key? key, required this.text,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            padding:const EdgeInsets.all(18.0),
            backgroundColor: primaryColor
        ),
        onPressed: onPressed,
        child: CustomText(text: text,color: Colors.white,
          alignment: Alignment.center,
        )
    );
  }
}
