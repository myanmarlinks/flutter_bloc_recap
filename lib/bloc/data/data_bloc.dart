import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  @override
  DataState get initialState => InitialDataState();

  @override
  Stream<DataState> mapEventToState(
    DataEvent event,
  ) async* {
    if(event is FetchData) {
      yield LoadingDataState();
      await Future.delayed(Duration(seconds: 2));
      yield SuccessDataState();
    }
  }
}
