import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Two"),
      ),
      body: Container(
        color: Colors.green,
        margin: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            "Page Two",
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
