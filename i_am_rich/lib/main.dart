import 'package:flutter/material.dart';

//The main function is the starting point for all Flutter apps
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('I Am Rich'),
        ),
        backgroundColor: Colors.blueGrey[800],
      ),
      backgroundColor: Colors.blueGrey,
      body: const Center(
        child: Image(
          image: AssetImage('images/diamond.png'),
        ),
      ),
    ),
  ));
}
