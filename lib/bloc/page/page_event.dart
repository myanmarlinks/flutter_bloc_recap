import 'package:meta/meta.dart';

@immutable
abstract class PageEvent {}

class PageOneEvent extends PageEvent {}

class PageTwoEvent extends PageEvent {}
