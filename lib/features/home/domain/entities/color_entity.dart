import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ColorEntity extends Equatable {
  const ColorEntity({required this.color});

  final Color color;

  @override
  List<Object?> get props => [color];
}
