import 'dart:async';
import 'package:bloc/bloc.dart';
import 'bloc.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  @override
  ColorState get initialState => InitialColorState();

  @override
  Stream<ColorState> mapEventToState(
    ColorEvent event,
  ) async* {
    if(event is ChangeColorEvent) {
      yield ChangeColorState(color: event.color);
    }
  }
}
