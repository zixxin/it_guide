import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/KioskFood.dart';

class KioskMain extends StatefulWidget {
  KioskMain({Key? key, required this.title}) : super(key: key);
  // KioskMain({Key key, this.title}) : super(key: key);
  final String title;

  @override 
  _kiosk_mainState createState() => _kiosk_mainState();
}

class _kiosk_mainState extends State <KioskMain> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title, 
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.yellow[700]
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(50.0),
                    color: Colors.green[400],
                    child: Text('버거',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    padding: EdgeInsets.all(50.0),
                    // color: Colors.green,
                    child: Text('사이드')
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    padding: EdgeInsets.all(50.0),
                    // color: Colors.purple,
                    child: Text('음료수')
                  ),
                ),
              ]
            ),

            Row(
              children: [
                Expanded (
                  child: Container(
                    height: 150,
                    // padding: EdgeInsets.all(120.0),
                    // color: Colors.pinkAccent,
                    child: ElevatedButton (
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => KioskFood(title: 'Kiosk')),
                        );
                      },
                      child: Image.asset("img/burger1.png"),
                    )
                  )
                ),
                Expanded (
                  child: Container(
                      height: 150,
                      // padding: EdgeInsets.all(120.0),
                      // color: Colors.pinkAccent,
                      child: Image.asset("img/burger2.png"),
                      // child: Text('2')
                  )
                ),
              ],
            ),
            Row(
              children: [
                Expanded (
                  child: Container(
                      height: 150,
                      // padding: EdgeInsets.all(120.0),
                      // color: Colors.pinkAccent,
                      child: Image.asset("img/burger.png"),
                      // child: Text('2')
                  )
                ),
                Expanded (
                  child: Container(
                      height: 150,
                      // padding: EdgeInsets.all(120.0),
                      // color: Colors.pinkAccent,
                      child: Image.asset("img/burger2.png"),
                      // child: Text('2')
                  )
                ),
              ],
            ),
            Container(
              height: 50,
            ),

            Container(
              height: 220,
              // padding: EdgeInsets.all(120.0),
              color: Colors.grey[300],
              child: Text('카트',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
                ),
              )
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    // padding: EdgeInsets.all(120.0),
                    color: Colors.grey[400],
                    child: Text('취소',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    // padding: EdgeInsets.all(120.0),
                    color: Colors.grey[500],
                    child: Text('결제하기',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                )
              ],
            )
            
          ],
        ),
      ),
    );
  }

}
