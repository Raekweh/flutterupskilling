import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.brown,
      appBar:AppBar(
        backgroundColor: Colors.brown,
        elevation: 0.0,
        title: Text('Sign in')
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Signin Anon'),
          onPressed: () async
          {

          },
        )
      ),
    );
  }
}