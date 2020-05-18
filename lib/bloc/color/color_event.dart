import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ColorEvent {}

class ChangeColorEvent extends ColorEvent {
  final Color color;
  ChangeColorEvent({this.color});
}
