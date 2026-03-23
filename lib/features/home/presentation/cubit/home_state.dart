import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {
  const HomeInitial();
}

class HomeColorChanged extends HomeState {
  const HomeColorChanged({required this.backgroundColor});

  final Color backgroundColor;

  @override
  List<Object?> get props => [backgroundColor];
}
