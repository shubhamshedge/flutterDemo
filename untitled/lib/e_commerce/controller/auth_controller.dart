import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:untitled/e_commerce/consts/consts.dart';

class AuthController extends GetxController {
  Future<UserCredential?> loginMethod(email, password, context) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.message.toString());
    }
    return userCredential;
  }

  Future<UserCredential?> signUpMethod(email, password, context) async {
    UserCredential? userCredential;
    try {
      userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.message.toString());
    }
    return userCredential;
  }

  storeUserData(name, password, email) async {
    DocumentReference store =
        firestore.collection(userCollection).doc(currentUSer!.uid);
    store.set(
        {'name': name, 'password': password, 'email': email, 'imgUrl': ''});
  }


  signOut(context) async {
    try {
      await auth.signOut();
    } on FirebaseAuthException catch (e) {
      VxToast.show(context, msg: e.message.toString());
    }
  }
}
