import 'package:fragen/main.dart';
import 'package:fragen/plus.dart';

import 'Fragen.dart';

class Data {
  Plus pl=Plus();
  int _fragen_Count = 0;
  List<Fragen> _dieFragen = [
    Fragen(
        fragen_Actuel: 'Berlin ist Hauptstadt von Deutscland', antwort: true),
    Fragen(fragen_Actuel: 'Deutschland hat 10 Bundesland', antwort: false),
    Fragen(
        fragen_Actuel:
            'Die deutsche Nationalmannschaft  hat das letzte Turnier gewonnen',
        antwort: false),
    Fragen(
        fragen_Actuel: 'Mercedes ist eine italienische Marke ', antwort: false),
    Fragen(fragen_Actuel: 'Die Turken leben auch in Koln', antwort: true),
    Fragen(fragen_Actuel: 'kazandin', antwort: true),
    Fragen(fragen_Actuel: 'kaybettin', antwort: true),

  ];

  int get fragen_Count => _fragen_Count;

  set fragen_Count(int value) {
    _fragen_Count = value;
  }

  String getFragtArtikel() {
    return _dieFragen[_fragen_Count].fragen_Actuel;
  }

  bool getAntwortbool() {
    return _dieFragen[_fragen_Count].antwort;
  }

  List<Fragen> get dieFragen => _dieFragen;

  set dieFragen(List<Fragen> value) {
    _dieFragen = value;
  }

  void nachsteFrage(int point) {
    if(fragen_Count< dieFragen.length){
      _fragen_Count++;
      if(fragen_Count+1< dieFragen.length){
        if(point>0){

          _dieFragen.remove( Fragen(
              fragen_Actuel: 'kaybettin', antwort: true),);
        }
       else{_dieFragen.remove( Fragen(
            fragen_Actuel: 'kazandin', antwort: true),);}
      }
  }
}}
