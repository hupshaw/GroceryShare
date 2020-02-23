import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {

  //Parameters
  final myUsername = TextEditingController();
  final myPassword = TextEditingController();

  @override
  void dispose() {
    myUsername.dispose();
    myPassword.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome! Pleas enter your username/password'),
      ),
      body: Center(
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            TextField (controller: myUsername),
            TextField (controller: myPassword),
          ]

        child: RaisedButton(
          child: Text('Log in'),
          onPressed: () {
            // Navigate to second route when tapped.
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
              Navigator.pop(context);
          },
          child: Text('Return to home'),
        ),
      ),
    );
  }
}
