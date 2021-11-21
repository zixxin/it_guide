import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/KioskMain.dart';
import 'package:it_guide/kiosk/ThreeFood.dart';
import 'package:it_guide/kiosk/selectWhere.dart';
import 'package:it_guide/main.dart';

class MenuSelect extends StatefulWidget {
  MenuSelect({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _kiosk_mainState createState() => _kiosk_mainState();
}

class _kiosk_mainState extends State<MenuSelect> {
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
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
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
                                "잘했어요!\n선택한 버거가 \n잘 카트에 넣어졌어요!\n모두 선택했다면\n이제 결제를 해볼까요?\n 결제버튼을 눌러주세요!",
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
                                  child: Text(
                            '카트',
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ))),
                          Expanded(
                            child: Container(
                                child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ThreeFood(title: "키오스크")),
                                );
                              },
                              child: Text(
                                '스파이시 치킨 버거 세트       X\n5900원',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                          ),
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
                                MaterialPageRoute(
                                    builder: (context) =>
                                        KioskMain(title: "키오스크")),
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
                    )
                  ],
                ),
              ]),
        ));
  }
}
