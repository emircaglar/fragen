import 'package:flutter/material.dart';
import 'fragen_page.dart';
import 'leben.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red,
          scaffoldBackgroundColor: Colors.blueAccent,
      ),
      home: DefaultTabController(

        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Fragen"),
                Tab(text: "Bild"),
                Tab(text: "Extra"),
              ],
            ),
          ),
          backgroundColor: Colors.indigo[700],
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(2),
              child: TabBarView(
                children: [
                  Frage_Page(),
                  Leben(),
                  Extra(),
                ],
              ),
            ),
          ),
        ),
      ),
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
        ),
        Row(
          children: [
            Expanded(child: Text('2')),
          ],
        ),
      ],
    );
  }
}
