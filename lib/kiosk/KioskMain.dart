import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/ThreeFood.dart';

class KioskMain extends StatefulWidget {
  KioskMain({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _kiosk_mainState createState() => _kiosk_mainState();
}

class _kiosk_mainState extends State<KioskMain> {
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
                        margin: EdgeInsets.only(top: 30),
                        child: Text(
                          '버거',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
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
                    child: Container(
                        margin: EdgeInsets.only(top: 30),
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
                    height: 100,
                    child: Container(
                        margin: EdgeInsets.only(top: 30),
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
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ThreeFood(title: "키오스크")),
                            );
                          },
                          child: Image.asset("img/burger1.png"),
                        ))),
                Expanded(
                    child: Container(
                  height: 150,
                  child: Image.asset("img/burger2.png"),
                )),
              ],
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
                            "안녕하세요 마루에요! \n지금부터 메뉴 주문을 위한\n키오스크 사용법을 알려줄게요! \n 먼저 주문할 버거 세트 버튼을 \n터치해주세요!",
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
                    child: Text(
                      '카트',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ))),
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
                        onPressed: () {},
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
                              Colors.grey.shade500),
                        ),
                        onPressed: () {},
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
