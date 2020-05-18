import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  @override
  PageState get initialState => InitialState();

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if(event is PageOneEvent) {
      yield PageOneState();
    }
    if(event is PageTwoEvent) {
      yield PageTwoState();
    }
  }
}
