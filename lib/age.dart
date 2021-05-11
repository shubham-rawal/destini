import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'storypage.dart';
import 'main.dart';

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  int state = 0;
  Gradient grad1 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.greenAccent, Colors.limeAccent]);
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
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 5,
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
                            'What is Your Age?',
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
                  Center(
                    child: TextButton(
                      onPressed: () {
                        showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1921, 1, 1),
                            lastDate: DateTime.now());
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/calendar.jpg'),
                        radius: 40.0,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.green, Colors.limeAccent],
                      ),
                    ),
                    padding: EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          runApp(StoryPage());
                        });
                      },
                      child: Icon(
                        Icons.send,
                        color: Colors.black,
                        size: 50.0,
                      ),
                    ),
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
