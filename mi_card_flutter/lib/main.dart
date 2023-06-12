import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('images/ben.png'),
              ),
              Text(
                'Benjamin Dempsey',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 35.0,
                    color: Colors.white),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'SourceSans3',
                    fontSize: 25.0,
                    color: Colors.teal[100],
                    letterSpacing: 1.5),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                        Icons.phone,
                        size: 40.0,
                        color: Colors.teal
                    ),
                    title: Text(
                      '315 640 9201',
                      style: TextStyle(
                          color: Colors.teal[900],
                          fontFamily: 'SourceSans3',
                          fontSize: 20
                      ),
                    ),

                  )
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Icon(
                        Icons.email,
                        size: 40.0,
                        color: Colors.teal
                    ),
                    title: Text(
                      'benjamin.dempsey97@gmail.com',
                      style: TextStyle(
                          color: Colors.teal[900],
                          fontFamily: 'SourceSans3',
                          fontSize: 17
                      ),
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
