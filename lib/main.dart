import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

//Create a Stateless widget called BallPage
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  //This widget is the root of this application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Center(
            child: Text("Ask Me Anything"),
          ),
        ),
        //Run Ball
        body: Ball(),
      ),
    );
  }
}

//Create a Stateful widget called Ball
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

//Set the ball number image equals to ball1.png in the beginning
class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              randomize();
            });
            //Print the random ballNumber to the console when the button gets pressed
            print("Ball Number is $ballNumber.");
          },
          //Use the ballNumber variable that was just created to generate random ball images onto the screen
          child: Image.asset(
            ballNumber == 0?'images/ball1.png':'images/ball$ballNumber.png',
            width: 380.0,height: 360.0,
          ),
        ),
      ),
    );
  }

  //Set the random ball number to be displayed (1 to 5)
  void randomize(){
    ballNumber = Random().nextInt(5) + 1;
  }
}



