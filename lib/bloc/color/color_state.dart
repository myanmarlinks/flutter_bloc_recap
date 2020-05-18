import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ColorState {}

class InitialColorState extends ColorState {}

class ChangeColorState extends ColorState {
  final Color color;
  ChangeColorState({this.color});
}
