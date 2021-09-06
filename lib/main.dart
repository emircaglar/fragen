import 'package:flutter/material.dart';

import 'constans.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
              Tab(text: "Fragen"),
              Tab(text: "Bild"),
              Tab(text: "Fragen"),
              ],
              ),
            ),
              backgroundColor: Colors.indigo[700],
              body: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: TabBarView(
                      children: [
                        SoruSayfasi(),Bild(),Extra(),
                      ],
                    ),
                  ),
              ),
          ),
        ),
    );
  }
}


class Bild extends StatefulWidget {
  const Bild({Key? key}) : super(key: key);

  @override
  _BildState createState() => _BildState();
}

class _BildState extends State<Bild> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Text('1')),
          ],
        ),Row(
          children: [
            Expanded(child: Text('2')),
          ],
        ),
      ],
    );
  }
}
class Extra extends StatefulWidget {
  const Extra({Key? key}) : super(key: key);

  @override
  _ExtraState createState() => _ExtraState();
}

class _ExtraState extends State<Extra> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Text('1')),
          ],
        ),Row(
          children: [
            Expanded(child: Text('2')),
          ],
        ),
      ],
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
  'Die Turken leben auch in Koln',
  ''
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
                              switch (fragen_Count) {
                                case 0:
                                  plus = plus - 10;
                                  auswahlen.add(falsch);
                                  fragen_Count = fragen_Count + 1;
                                  break;
                                case 1:
                                  plus = plus + 10;
                                  auswahlen.add(richtig);
                                  fragen_Count = fragen_Count + 1;
                                  break;
                                case 2:
                                  plus = plus + 10;
                                  auswahlen.add(richtig);
                                  fragen_Count = fragen_Count + 1;
                                  break;
                                case 3:
                                  plus = plus + 10;
                                  auswahlen.add(richtig);
                                  fragen_Count = fragen_Count + 1;
                                  break;
                                case 4:
                                  plus = plus - 10;
                                  auswahlen.add(falsch); fragen_Count = fragen_Count + 1;
                                  break;

                              }
                              }
                              
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
                          switch (fragen_Count) {
                            case 0:
                              plus = plus + 10;
                              auswahlen.add(richtig);
                              fragen_Count = fragen_Count + 1;
                              break;
                              break;
                            case 1:
                              plus = plus - 10;
                              auswahlen.add(falsch);
                              fragen_Count = fragen_Count + 1;
                              break;
                            case 2:
                              plus = plus - 10;
                              auswahlen.add(falsch);
                              fragen_Count = fragen_Count + 1;
                              break;
                            case 3:
                              plus = plus - 10;
                              auswahlen.add(falsch);
                              fragen_Count = fragen_Count + 1;
                              break;
                            case 4:
                              plus = plus + 10;
                              auswahlen.add(richtig); fragen_Count = fragen_Count + 1;
                              break;

                          }}
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
 void message(int plus){
  if(plus==0)
    print('du bist gleich 0');
  else if(plus<0)
    print('du hast verloren ');
  else
    print('du hast gewonne');
}
