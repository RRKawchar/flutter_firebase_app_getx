import 'package:flutter/material.dart';
import 'package:flutter_project_using_getx/widgets/custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hint;
   var onSave;
   var validator;
   CustomTextFormField({
    Key? key,
    required this.text,
    required this.hint,
    required this.onSave,
    required this.validator
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            size: 14,
            color: Colors.grey.shade900,
          ),
          TextFormField(
            onSaved: onSave,
            validator: validator,
            decoration:InputDecoration(
                hintText: hint,
                hintStyle:const TextStyle(color: Colors.grey),
                fillColor: Colors.white),
          )
        ],
      ),
    );
  }
}
