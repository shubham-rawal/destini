import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'storypage.dart';

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
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
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.green, Colors.limeAccent],
                        ),
                        shape: BoxShape.circle,
                      ),
                      margin: EdgeInsets.all(50.0),
                      padding: EdgeInsets.all(50.0),
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
                  Center(
                    child: TextButton(
                      onPressed: () {
                        showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(1921, 1, 1), lastDate: DateTime.now());
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
