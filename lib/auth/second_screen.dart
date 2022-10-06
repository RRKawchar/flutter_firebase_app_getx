import 'package:flutter/material.dart';
import 'package:flutter_project_using_getx/core/view_model/auth_view_model.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GetBuilder<AuthViewModel>(
              init: AuthViewModel(),
            builder: (value)=>Text("${value.counter}"),
            ),
            ),

          GetBuilder<AuthViewModel>(
            builder:(value)=>ElevatedButton(onPressed: (){
              value.increment();

            },
                child: Text("Increment")),
          )
        ],
      ),
      );

  }
}
