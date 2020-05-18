import 'package:meta/meta.dart';

@immutable
abstract class DataState {}

class InitialDataState extends DataState {}

class LoadingDataState extends DataState {}

class SuccessDataState extends DataState {}
