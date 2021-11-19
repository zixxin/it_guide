import 'package:flutter/material.dart';
import 'package:it_guide/card/card_camera_1.dart';
import 'package:it_guide/kiosk/KioskMain.dart';
import 'package:it_guide/zoom/zmenu.dart';

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
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 120,
              child: Image.asset("img/banner.png"),
            ),
            Row(children: <Widget>[
              Expanded(
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MenuPage(title: "zoom")),
                      );
                    },
                    child: Image.asset("img/zoom_icon.png"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KioskMain(title: '키오스크')),
                      );
                    },
                    child: Image.asset("img/kiosk_icon.png"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  width: 120,
                  height: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CardCamera1Page()),
                      );
                    },
                    child: Image.asset("img/card_icon.png"),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                ),
              ),
            ]),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardCamera1Page()),
                        );
                      },
                      child: Image.asset("img/voice_icon.png"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      child: Image.asset("img/youtube_icon.png"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp()),
                        );
                      },
                      child: Image.asset("img/bamin_icon.png"),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
