import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_three/bloc/color/bloc.dart';
import 'package:test_three/ui/another_home.dart';

class MyHome extends StatelessWidget {
  static const String _title = "Hello BLoC!";
  static const EdgeInsets _buttonStyle = EdgeInsets.only(top: 20.0, left: 10.0, bottom: 20.0, right: 10.0);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      colorBloc..add(ChangeColorEvent(color: Colors.red));
                    },
                    padding: _buttonStyle,
                    child: Text(
                        "Red",
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    color: Colors.red,
                  ),
                  FlatButton(
                    onPressed: () {
                      colorBloc..add(ChangeColorEvent(color: Colors.green));
                    },
                    padding: _buttonStyle,
                    child: Text(
                      "Green",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    color: Colors.green,
                  ),
                  FlatButton(
                    onPressed: () {
                      colorBloc..add(ChangeColorEvent(color: Colors.blue));
                    },
                    padding: _buttonStyle,
                    child: Text(
                      "Blue",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    color: Colors.blue,
                  ),
                  FlatButton(
                    onPressed: () {
                      colorBloc..add(ChangeColorEvent(color: Colors.orange));
                    },
                    padding: _buttonStyle,
                    child: Text(
                      "Orange",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    color: Colors.orange,
                  )
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<ColorBloc, ColorState>(
                builder: (context, state) {
                  var _color = Colors.white;
                  if(state is ChangeColorState) {
                    _color = state.color;
                  }
                  return Container(
                    margin: EdgeInsets.all(10.0),
                    color: _color,
                  );
                },
              )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AnotherHome())
          );
        },
        child: Icon(Icons.event),
      ),
    );
  }
}
