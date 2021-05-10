import 'package:flutter/material.dart';
import 'age.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Age(),
    );
  }
}


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
                             errorText: _validate ? 'Cannot be Empty' : null,
                           ),
                         ),
                       ),
                     ),
                     TextButton(
                       onPressed: () {
                         setState(() {
                           _text.text.isEmpty
                               ? _validate = true
                               : _validate = false;
                           if(!_validate)
                             runApp(Age());
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


