import 'package:flutter/material.dart';

class Friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.withOpacity(0.4),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.people,
                size: 50,
                color: Colors.pink,
              ),
              Text(
                'Home',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.pink,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
