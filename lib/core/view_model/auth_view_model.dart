import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {

  final GoogleSignIn _googleSignIn=GoogleSignIn(scopes: ['email']);
  final FirebaseAuth _auth=FirebaseAuth.instance;
  FacebookLogin _facebookLogin=FacebookLogin();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
  void googleSignInMethod()async{

   final GoogleSignInAccount? googleUser=await _googleSignIn.signIn();

   GoogleSignInAuthentication googleSignInAuthentication=await googleUser!.authentication;

   print(googleUser);

  final AuthCredential credential= GoogleAuthProvider.credential(
     idToken: googleSignInAuthentication.idToken,
     accessToken: googleSignInAuthentication.accessToken,
   );
   UserCredential userCredential= await _auth.signInWithCredential(credential);
   print(userCredential);


  }

  void facebookSignInMethod()async{

    await _facebookLogin.logIn(permissions:);
  }

}
