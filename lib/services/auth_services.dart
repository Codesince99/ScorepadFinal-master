import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

abstract class BaseAuth {

  Future<FirebaseUser> getCurrentUser();

}


class Auth implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
  @override
  Future<FirebaseUser> getCurrentUser() async {
   try{
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user;
   }catch(e){
     print('error $e');
   }
  }
}