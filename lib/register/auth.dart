import 'package:ParkingApp/register/models/app_user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object based on firebaseuser
  AppUser? _userCreator(User? user) {
    return user != null ? AppUser(user.uid) : null;
  }

  //auth change user stream
  Stream<AppUser?> get user {
    return _auth.authStateChanges().map(_userCreator);
  }

  //Sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userCreator(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}