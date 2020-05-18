import 'package:meta/meta.dart';

@immutable
abstract class PageState {}

class InitialState extends PageState {}

class PageOneState extends PageState {}

class PageTwoState extends PageState {}
