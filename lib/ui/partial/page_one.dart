import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page One"),
      ),
      body: Container(
        color: Colors.blue,
        margin: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            "Page One",
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
