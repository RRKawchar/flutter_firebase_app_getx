import 'package:flutter/material.dart';
import 'package:flutter_project_using_getx/consts/colors.dart';
import 'package:flutter_project_using_getx/core/view_model/auth_view_model.dart';
import 'package:flutter_project_using_getx/widgets/custom_button.dart';
import 'package:flutter_project_using_getx/widgets/custom_button_social.dart';
import 'package:flutter_project_using_getx/widgets/custom_text_form_field.dart';
import 'package:flutter_project_using_getx/widgets/custom_text.dart';
import 'package:get/get.dart';


class LoginScreen extends GetWidget<AuthViewModel>{
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Welcome",size: 30,fontWeight: FontWeight.bold,color: Colors.black,),
                  CustomText(text: "Sign Up",color: primaryColor,size: 18,fontWeight: FontWeight.bold,),
                ],
              ),
              const SizedBox(height: 10,),
              CustomText(text: "Sign in to Continue",size: 14,color:Colors.grey,),
              const SizedBox(height: 30,),
               CustomTextFormField(
                 text: "Email",
                 hint: "rrk@gmail.com",
                 onSave: (value){

                 },
                 validator: (value){

                 },

               ),
              const SizedBox(height: 20,),
              CustomTextFormField(
                text: "Password",
                hint: "*************",
                onSave: (value){

                },
                validator: (value){

                },

              ),
               const SizedBox(height: 20,),
              CustomText(
                text: "Forgot Password?",
                size: 14,
                alignment: Alignment.topRight,
              ),
              const SizedBox(height: 20,),
              CustomButton(
                  text: "SIGN IN",
                  onPressed: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (cn)=>SecondScreen()));
                   //  Get.to(SecondScreen());
                  }
              ),
              const SizedBox(height: 20,),
              CustomText(text: "-OR-",
              alignment: Alignment.center
              ),
              const SizedBox(height: 40,),

               CustomButtonSocial(
                 text: "Sign In with Facebook",
                 imageName: "assets/images/facebook.png",
                 onPressed: () {  },),
              const SizedBox(height: 40,),
               CustomButtonSocial(
                 text: "Sign In with Google",
                 imageName: "assets/images/google.png",
                 onPressed: () {

                   controller.googleSignInMethod();
                 },),





            ],
          ),
        ),
      ),
    );
  }
}
