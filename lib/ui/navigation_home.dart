import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_three/bloc/data/bloc.dart';

class NavigationHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final DataBloc dataBloc = BlocProvider.of<DataBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: BlocListener<DataBloc, DataState>(
        listener: (context, state) {
          if (state is SuccessDataState) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.green,
                content: Text('Success'),
              ),
            );
          }
        },
        child: BlocBuilder<DataBloc, DataState>(
          builder: (context, state) {
            if (state is InitialDataState) {
              return Center(child: Text('Press the Button'));
            }
            if (state is LoadingDataState) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is SuccessDataState) {
              return Center(child: Text('Success'));
            }
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: Icon(Icons.play_arrow),
            onPressed: () {
              dataBloc.add(FetchData());
            },
          ),
        ],
      ),
    );
  }
}
