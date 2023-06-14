import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.blueGrey[700],
          ),
          body: MagicPage(),
        ),
      ),
    );

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {

  var magicBallNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$magicBallNum.png'),
        onPressed: rollBall,
      ),
    );
  }

  void rollBall() {
    setState((){
      magicBallNum = Random().nextInt(5) + 1;
    });
  }
}

