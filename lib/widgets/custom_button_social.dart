import 'package:flutter/material.dart';
import 'package:flutter_project_using_getx/widgets/custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  VoidCallback onPressed;

   CustomButtonSocial({Key? key, required this.text, required this.imageName,  required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade50
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
              )
          ),
          onPressed: onPressed,
          child: Row(
            children: [
              Image.asset(imageName,height: 20),
              const SizedBox(width: 100,),
              CustomText(text: text,)
            ],
          )
      ),
    );
  }
}
