import 'package:flutter/material.dart';
import 'package:it_guide/main.dart';

class Step4 extends StatefulWidget {
  Step4({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _kiosk_mainState createState() => _kiosk_mainState();
}

class _kiosk_mainState extends State<Step4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            widget.title,
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
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red[700],
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 1',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Expanded(
                child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red[700],
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 2',
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[700],
                      border: Border.all(color: Colors.black),
                    ),
                    height: 100,
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 3',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red[700],
                      border: Border.all(color: Colors.black),
                    ),
                    height: 100,
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 4',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "주문이 완료되었습니다!",
                style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                "주문번호",
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[700]),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text(
                "830",
                style: TextStyle(fontSize: 70.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "신용카드를 뽑은 후\n출력된 영수증을 받아가세요!",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            FloatingActionButton(
                onPressed: () => showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return AlertDialog(
                          content: const Text(
                            "키오스크를 사용한\n메뉴 주문이 모두 끝났어요!\n정말 잘했어요! 최고최고 >_<",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: const Text('확인'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ]);
                    }),
                child: Image.asset('img/maru.png')),
            Container(
              margin: EdgeInsets.only(top: 50, left: 30, right: 30),
              height: 100,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amber),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  child: Container(
                      child: Text(
                    '키오스크 완료',
                    style:
                        TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ))),
            ),
          ],
        ),
      ),
    );
  }
}
