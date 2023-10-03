import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Page'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/default_profile.jpg',
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(height: 16.0),
              Text(
                'Max Bilous',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Student',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ContactInfo(
                      icon: Icons.email, text: 'bilousmaks27@gmail.com'),
                  ContactInfo(icon: Icons.phone, text: '+380687721527'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  ContactInfo({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(icon, color: Colors.white),
        SizedBox(width: 8.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
