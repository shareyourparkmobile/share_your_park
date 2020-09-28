import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:share_your_park/screens/authenticate/login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = new GlobalKey<FormState>();

  String _email;
  String _password;

  bool validateAndSave() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      try {
        var user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        print("Signed in: $user.uid");
      } catch (e) {
        print("Error: $e");
      }
    }
  }

  void _pushPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(builder: (_) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up page",
          style: TextStyle(fontSize: 25.0),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (value) =>
                    value.isEmpty ? "Email can't be empty" : null,
                onSaved: (value) => _email = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (value) =>
                    value.isEmpty ? "Password can't be empty" : null,
                onSaved: (value) => _password = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "confirmed Password"),
                obscureText: true,
                validator: (value) =>
                    value.isEmpty ? "Password can't be empty" : null,
                onSaved: (value) => _password = value,
              ),
              RaisedButton(
                child: Text(
                  "Sign up",
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: validateAndSubmit,
              ),
              FlatButton(
                child: Text(
                  "I have an account",
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () => _pushPage(context, Login()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
