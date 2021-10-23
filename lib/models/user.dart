import 'package:flutter/material.dart';

class User {
  String? nombre;
  int? edad;
  List<String> profeciones;

  User({this.nombre, this.edad, this.profeciones = const []});

  User copyWith({String? nombre, int? edad, List<String>? profecion}) {
    return User(
        nombre: nombre ?? this.nombre,
        edad: edad ?? this.edad,
        profeciones: profeciones ?? this.profeciones);
  }
}
