import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery Share',//title
      theme: ThemeData (
        primarySwatch: Colors.blue,
      ),
      //What will show up when you open the app?
      home: MySignIn(),
    );
  }//end build
}//end MyApp

// Define a custom Form widget.
class MySignIn extends StatefulWidget {
  @override
  _MySignInState createState() => _MySignInState();
}

//Define a corresponding State class, which holds
//the data related in the form
class _MySignInState extends State<MySignIn> {

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
        title: Text('Please enter your username and password'),
      ),//appBar
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            TextField (controller: myUsername),
            TextField (controller: myPassword),
            floatingActionButton: FloatingActionButton (
              onPressed: () {
                return showDialog(
                  context: context,
                  builder: (context) {
                  return AlertDialog(
                    content: Text(myPassword.text), //this will show the text in myPassword
                  );
                },//end builder

                );//showDialog
              },//onPressed
            tooltip: 'Show me the value!',
            child: Icon(Icons.text_fields),
            ),//Button
          ], //end of children list
        ), //end column
      ), //end body
    );//Scaffold
  } //end build
}//end home page
