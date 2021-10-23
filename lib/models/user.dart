import 'package:flutter/material.dart';

class User {
  final String nombre;
  final int edad;
  final List<String> profeciones;

  User({required this.nombre, required this.edad, required this.profeciones});

  User copyWith({String? nombre, int? edad, List<String>? profeciones}) {
    return User(
        nombre: nombre ?? this.nombre,
        edad: edad ?? this.edad,
        profeciones: profeciones ?? this.profeciones);
  }
}
