import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/Step2.dart';
import 'package:it_guide/main.dart';

class Step1 extends StatefulWidget {
  Step1({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _kiosk_mainState createState() => _kiosk_mainState();
}

class _kiosk_mainState extends State<Step1> {
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
                      // color: Colors.red[600],
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 2',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    height: 100,
                    // color: Colors.green,
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 3',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    height: 100,
                    // padding: EdgeInsets.all(40.0),
                    // color: Colors.purple,
                    child: Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Text(
                          'STEP 4',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
              ),
            ]),
            Expanded(
              child: Container(
                color: Colors.grey[350],
                margin:
                    EdgeInsets.only(top: 10, bottom: 15, left: 30, right: 30),
                padding: EdgeInsets.all(10),
                child: Text(
                  '스파이스 치킨 버거 세트\n\n\n5900원                                 수량 1개',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              height: 150,
            ),
            FloatingActionButton(
                onPressed: () => showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return AlertDialog(
                          content: const Text(
                            "최종 메뉴를 결제할 차례에요! \n마지막으로 주문사항이 \n모두 맞는지 확인한 후\n 결제하기를 눌러주세요!",
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
              height: 10,
            ),
            Container(
                height: 175,
                color: Colors.grey[300],
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                              '주문 금액\n\n할인금액\n\n총 결제금액',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            )),
                            Expanded(
                                child: Text(
                              '5900원\n\n0원\n\n5900원',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end,
                            ))
                          ],
                        ),
                      )),
                    ],
                  ),
                )),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.grey.shade400),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        child: Container(
                            child: Text(
                          '취소',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 35.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ))),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.red.shade700),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Step2(title: "키오스크")),
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
