import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_three/bloc/page/bloc.dart';
import 'package:test_three/ui/navigation_home.dart';
import 'package:test_three/ui/partial/page_one.dart';
import 'package:test_three/ui/partial/page_two.dart';

class AnotherHome extends StatelessWidget {

  static const String _title = "Another Home";
  static const EdgeInsets _buttonStyle = EdgeInsets.only(top: 20.0, left: 10.0, bottom: 20.0, right: 10.0);

  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final PageBloc pageBloc = BlocProvider.of<PageBloc>(context);
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
                      pageBloc..add(PageOneEvent());
                    },
                    padding: _buttonStyle,
                    child: Text(
                      "Page One",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    color: Colors.blue,
                  ),
                  FlatButton(
                    onPressed: () {
                      pageBloc..add(PageTwoEvent());

                    },
                    padding: _buttonStyle,
                    child: Text(
                      "Page Two",
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            Expanded(
                child: BlocListener<PageBloc, PageState>(
                  condition: (previousState, state) {
                    print("CONDITION : $previousState");
                    print("CONDITION : $state");
                    return true;
                  },
                  listener: (context, state) {
                    if(state is PageOneState) {
                      Navigator.push(
                        context,
                          MaterialPageRoute(builder: (context) => PageOne())
                      );
                    }
                    if(state is PageTwoState) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PageTwo())
                      );
                    }
                  },
                  child: Container(
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NavigationHome())
          );
        },
        child: Icon(Icons.error),
      ),
    );
  }
}
