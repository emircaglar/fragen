import 'package:flutter/material.dart';
import 'package:fragen/Frag_Test.dart';
import 'package:fragen/plus.dart';

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



List<Widget> auswahlen=[];

Data data=Data();
Plus pl=Plus();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                data.getFragtArtikel(pl.plus),

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
            flex: 3,
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Center(child: data.getimage(pl.plus)))),
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
                          Expanded(child: Text(pl.plus.toString(),
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

                            if(data.fragen_Count+3<data.dieFragen.length){setState(() {

                                if(data.getAntwortbool()==false)
                                {auswahlen.add(richtig);
                                pl.plus= pl.zuNehmen();
                                }
                                else{auswahlen.add(falsch);
                                pl.plus=pl.abNehmen();}

                                data.nachsteFrage();


                            });}

                          },
                          child: Icon(Icons.thumb_down,color: Colors.red,
                            size: 50.0,
                          ),

                        ),
    ),
    ),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(3),

                        child: ElevatedButton(

                          onPressed: (){

                            if(data.fragen_Count+3<data.dieFragen.length){ setState(() {

                                if(data.getAntwortbool()==true)
                                {auswahlen.add(richtig);
                                pl.plus= pl.zuNehmen();
                                }
                                else{auswahlen.add(falsch);
                                pl.plus= pl.abNehmen();
                                }

                                data.nachsteFrage();}

                            );}

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

