import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_3/models/user_model.dart';
import 'package:flutter_application_3/services/user_service.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModels> signUp(
      {required String email,
      required String password,
      required String name,
      String hobby = ''}) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModels user = UserModels(
          id: userCredential.user!.uid,
          email: email,
          name: name,
          hobby: hobby,
          balance: 280000000);

      await UserService().setUser(user);

      return user;
    } catch (e) {
      throw e;
    }
  }
}
