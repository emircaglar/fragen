import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Meine_Widget extends StatelessWidget {
  final Color meine_Farbe;
  final Widget meine_Child;

  Meine_Widget({this.meine_Farbe = Colors.white,required this.meine_Child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: meine_Child,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color:meine_Farbe),
    );
  }
}