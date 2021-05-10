import 'package:flutter/material.dart';
import 'story_brain.dart';


StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
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
           padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
           constraints: BoxConstraints.expand(),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
               Expanded(
                 flex: 12,
                 child: Center(
                   child: Text(
                     storyBrain.getStory(),
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 25.0,
                     ),
                   ),
                 ),
               ),
               Expanded(
                 flex: 2,
                 child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     primary: Colors.red,
                     onPrimary: Colors.white,
                   ),
                   onPressed: () {
                     //Choice 1 made by user.
                     setState(() {
                       storyBrain.nextStory(1);
                     });
                   },
                   child: Text(
                     storyBrain.getChoice1(),
                     style: TextStyle(
                       fontSize: 20.0,
                     ),
                   ),
                 ),
               ),
               SizedBox(
                 height: 20.0,
               ),
               Expanded(
                 flex: 2,
                 child: Visibility(
                   visible: storyBrain.buttonShouldBeVisible(),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.blue,
                       onPrimary: Colors.white,
                     ),
                     onPressed: () {
                       //Choice 2 made by user.
                       setState(() {
                         storyBrain.nextStory(2);
                       });
                     },
                     child: Text(
                       storyBrain.getChoice2(),
                       style: TextStyle(
                         fontSize: 20.0,
                       ),
                     ),
                   ),
                 ),
               ),
             ],
           ),
         ),
       ),
     ),
    );
  }
}
