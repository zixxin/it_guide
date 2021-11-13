import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/KioskMain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IT Guide',
      theme: ThemeData(
        primaryColor: Color(0xff5D6DBE),
      ),
      home: MyHomePage(
        title: ' IT 가이드 ',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title, 
          style: TextStyle(
            // color: Colors.yellow[700],
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 120,
              // padding: EdgeInsets.all(120.0),
              // color: Colors.pinkAccent,
              child: Image.asset("img/banner.png"),
              // child: Text('2')
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(50.0),
                    color: Colors.cyan,
                    child: Text('ZOOM')
                  ),
                ),
                Expanded(
                  child: SizedBox (
                    width: 120,
                    height: 120,
                    child: ElevatedButton (
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KioskMain(title: 'Kiosk')),
                        );
                      },
                      child: Text(
                        '키오스크',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: // Colors.blue;
                            MaterialStateProperty.all <Color>(Colors.pink),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                  padding: EdgeInsets.all(50.0),
                  color: Colors.amber,
                  child: Text('카드결제')
                  ),
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}
