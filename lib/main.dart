import 'package:flutter/material.dart';

import 'constans.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SoruSayfasi(),
                ),
            ),
        ),
    );
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {

int plus=0;
int fragen_Count=0;
List<Widget> auswahlen=[];
List<String> fragen=[
  'Berlin ist Hauptstadt von Deutscland',
  'Deutschland hat 10 Bundesland',
  'Die deutsche Nationalmannschaft  hat das letzte Turnier gewonnen',
  'Mercedes ist eine italienische Marke ',
  'Die Turken leben auch in Koln'
];


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                fragen[fragen_Count],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex:5,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing:  5,
                    spacing: 5,
                    children: auswahlen,

                  ),
                ),
                Expanded(flex: 1,
                    child: Center(
                      child: Column(
                        children: [
                          Expanded(child: Center(child: Text('Ergebnis',
                            style: TextStyle(color:Colors.white,fontSize: 10),))),
                          Expanded(child: Text(plus.toString(),
                            style: TextStyle(color:Colors.black,fontSize: 20),))
                        ],
                      ),
                    ),
                ),
              ],
            ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(3),
                        child: ElevatedButton(

                          onPressed: () {
                            setState(() {

                              if(fragen_Count<=4){
                                if(fragen_Count==1||fragen_Count==2||fragen_Count==3){
                                plus=plus+10;
                                auswahlen.add(richtig);
                              }
                              else{
                                plus=plus-10;
                                auswahlen.add(falsch);
                              }
                              fragen_Count=fragen_Count+1;}
                            });

                          },
                          child: Icon(Icons.thumb_down,color: Colors.red,
                            size: 50.0,
                          ),

                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(3),

                        child: ElevatedButton(

                          onPressed:  (){
                            setState(() {

                              if(fragen_Count<=4){
                                if(fragen_Count==0||fragen_Count==4){
                                  plus=plus+10;
                                  auswahlen.add(richtig);
                                }
                                else {
                                  plus=plus-10;
                                  auswahlen.add(falsch);
                                }
                                fragen_Count=fragen_Count+1;}


                            });

                          },
                          child: Icon(Icons.thumb_up, size: 50.0),
                        ),
                    ),

                ),
              ],
              ),
          ),
        )
      ],
    );
  }

}

