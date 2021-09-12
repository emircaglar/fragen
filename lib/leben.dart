import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'wie.dart';
import 'Meine_Widget.dart';

class Leben extends StatefulWidget {
  const Leben({Key? key}) : super(key: key);

  @override
  _LebenState createState() => _LebenState();
}

class _LebenState extends State<Leben> {

String wie="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Das leben ist zu kurz Deutsch zu lernen"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                        onTap: (){
                         setState(() {
                           wie="Selbst";
                         });
                        },
                        child: Meine_Widget(meine_Farbe: wie=="Selbst"?Colors.blueGrey:Colors.white,meine_Child: Frau_Man(wie: "Selbst",icon: FontAwesomeIcons.bookReader,),)),
                  ),
                  Expanded(
                    child: GestureDetector(
                        onTap:(){setState(() {
                          wie="In der Klasse";
                        });;},child: Meine_Widget(meine_Farbe: wie=="In der Klasse"?Colors.blueGrey:Colors.white,meine_Child: Frau_Man(wie: "In der Klasse",icon: FontAwesomeIcons.school,),)),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Meine_Widget(meine_Farbe: Colors.orange,meine_Child: Column(
                children:<Widget> [
                  Icon(FontAwesomeIcons.addressBook,color: Colors.green,size: 40,),
                  Text("Book",style: TextStyle(fontSize: 30,color: Colors.green),),
                ],
              ),),
            ),
            Expanded(
              flex: 1,
              child: Meine_Widget(meine_Child: Row(),),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Meine_Widget(meine_Child: Column(),),
                  ),
                  Expanded(
                    child: Meine_Widget(meine_Child: Column(),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




