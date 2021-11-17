import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/KioskFood.dart';
import 'package:it_guide/kiosk/selectWhere.dart';
import 'package:it_guide/main.dart';

class KioskOrder extends StatefulWidget {
  const KioskOrder({Key? key}) : super(key: key);

  @override
  _KioskOrderState createState() => _KioskOrderState();
}

class _KioskOrderState extends State<KioskOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            '키오스크',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.yellow[700]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(children: <Widget>[
              Expanded(
                child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          '버거',
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    height: 120,
                    // color: Colors.green,
                    child: Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          '사이드',
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    height: 120,
                    // padding: EdgeInsets.all(40.0),
                    // color: Colors.purple,
                    child: Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          '디저트',
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
              ),
            ]),
            Row(
              children: [
                Expanded(
                    child: Container(
                        height: 150,
                        // padding: EdgeInsets.all(120.0),
                        // color: Colors.pinkAccent,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: // Colors.blue;
                                MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MyApp()),
                            );
                          },
                          child: Image.asset("img/burger1.png"),
                        ))),
                Expanded(
                    child: Container(
                  height: 150,
                  // padding: EdgeInsets.all(120.0),
                  // color: Colors.pinkAccent,
                  child: Image.asset("img/burger2.png"),
                  // child: Text('2')
                )),
              ],
            ),
            Container(
              height: 70,
            ),
            Positioned(child: _text3()),
            Container(
              height: 50,
            ),
            Container(
                height: 220,
                // padding: EdgeInsets.all(120.0),
                color: Colors.grey[300],
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                              child: Text(
                        '카트',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ))),
                      Expanded(
                          child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: // Colors.blue;
                              MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KioskFood()),
                          );
                        },
                        child: Text(
                          '스파이스 치킨 버거 세트       X\n\n5900원',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                    ],
                  ),
                )),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 120,
                      // padding: EdgeInsets.all(120.0),
                      color: Colors.grey[400],
                      child: Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Text(
                            '취소',
                            style: TextStyle(
                                fontSize: 35.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ))),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    color: Colors.grey[500],
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: // Colors.blue;
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => selectWhere()),
                          );
                        },
                        child: Container(
                            child: Text(
                          '결제하기',
                          style: TextStyle(
                              fontSize: 35.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _text3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.blue[300],
          child: Text(
            '버거를 다 담았으면 결제를 해볼까요?\n결제하기 버튼을 눌러주세요!',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
