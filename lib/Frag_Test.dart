import 'package:flutter/cupertino.dart';
import 'package:fragen/main.dart';
import 'package:fragen/plus.dart';

import 'Fragen.dart';

class Data {
  Plus pl=Plus();
  int _fragen_Count = 0;
  List<Fragen> _dieFragen = [
    Fragen(
        fragen_Actuel: 'Berlin ist Hauptstadt von Deutscland',image: Image.asset('assets/berlin1.jpg'), antwort: true),
    Fragen(fragen_Actuel: 'Deutschland hat 10 Bundesland',image: Image.asset('assets/eyalet2.jpg'), antwort: false),
    Fragen(
        fragen_Actuel:
            'Die deutsche Nationalmannschaft  hat das letzte Turnier gewonnen',image: Image.asset('assets/milli3.jpg'),
        antwort: false),
    Fragen(
        fragen_Actuel: 'Mercedes ist eine italienische Marke ',image: Image.asset('assets/mercedes4.jpg'), antwort: false),
    Fragen(fragen_Actuel: 'Die Turken leben auch in Koln',image: Image.asset('assets/koln5.jpg'), antwort: true),
  Fragen(fragen_Actuel: '',image: Image.asset('assets/koln5.jpg'), antwort:true),
    Fragen(fragen_Actuel: 'kaybettin',image: Image.asset('assets/aglayan7.png'), antwort: true),
    Fragen(fragen_Actuel: 'kazandin',image: Image.asset('assets/gulen6.jpg'), antwort: true)

  ];

  int get fragen_Count => _fragen_Count;

  set fragen_Count(int value) {
    _fragen_Count = value;
  }

  String getFragtArtikel(int point) {

    String fragen_return=_dieFragen[_fragen_Count].fragen_Actuel;
    if(fragen_Count+3== dieFragen.length) {if(point>0){

      fragen_return=_dieFragen[dieFragen.length-1].fragen_Actuel;
    }
    else{fragen_return=_dieFragen[dieFragen.length-2].fragen_Actuel;}
    }
    return fragen_return;
  }

  bool getAntwortbool() {

    return _dieFragen[_fragen_Count].antwort;
  }
  Image getimage(int point) {

    Image image=_dieFragen[_fragen_Count].image;
    if(fragen_Count+3== dieFragen.length) {
      if(point>0){

     image=_dieFragen[dieFragen.length-1].image;
    }
    else{image=_dieFragen[dieFragen.length-2].image;}
    }
    return image;
  }



  List<Fragen> get dieFragen => _dieFragen;

  set dieFragen(List<Fragen> value) {
    _dieFragen = value;
  }

  void nachsteFrage() {
    if(fragen_Count< dieFragen.length){
      _fragen_Count++;

}}
  void nachsteImage() {

      if(fragen_Count+1==dieFragen.length){
        _dieFragen.removeLast();
  }

}}
