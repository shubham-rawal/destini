import 'package:flutter/material.dart';
import 'age.dart';
import 'dart:html';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int state = 0;
  Gradient grad1 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.greenAccent, Colors.limeAccent]);
  final _text = TextEditingController();
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    //flex: 5,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          if (state == 0) {
                            state = 1;
                            grad1 = LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.orangeAccent,
                                  Colors.yellow.shade400
                                ]);
                          } else {
                            state = 0;
                            grad1 = LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.greenAccent,
                                  Colors.limeAccent
                                ]);
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 3),
                        decoration: BoxDecoration(
                          gradient: grad1,
                          shape: BoxShape.circle,
                        ),
                        margin: EdgeInsets.all(50.0),
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            'What is your Name?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 30.0),
                          child: TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              controller: _text,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                labelText: 'Enter your Name',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                errorText: _validate
                                    ? 'This field cannot be empty'
                                    : null,
                              )),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            _text.text.isEmpty
                                ? _validate = true
                                : _validate = false;
                            if (!_validate) runApp(Age());
                          });
                        },
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 50.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
