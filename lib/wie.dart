import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Frau_Man extends StatelessWidget {
  final IconData icon;
  final String wie;
  Frau_Man({this.icon=FontAwesomeIcons.addressBook,this.wie='baby'});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon,size:30,color: Colors.black,),
        SizedBox(
          height: 5,
        ),
        Text(wie,style: TextStyle(fontSize: 20,color: Colors.black),)



      ],);
  }
}