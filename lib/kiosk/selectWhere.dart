import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/Step1.dart';

class selectWhere extends StatefulWidget {
  const selectWhere({Key? key}) : super(key: key);

  @override
  _selectWhereState createState() => _selectWhereState();
}

class _selectWhereState extends State<selectWhere> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            '키오스크',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.yellow[700]),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 150, left: 160),
              child: Text("선택해주세요",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(right: 30, left: 30),
              height: 200,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          height: 150,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () {},
                            child: Image.asset("img/in.png"),
                          ))),
                  Expanded(
                      child: Container(
                          height: 150,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () {},
                            child: Image.asset("img/out.png"),
                          ))),
                ],
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Step1(title: "키오스크")),
                  );
                },
                child: Text(
                  '확인',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.indigo),
                ),
              ),
            ),
            FloatingActionButton(
                onPressed: () => showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return AlertDialog(
                          content: const Text(
                            "메뉴를 식당 안에서 먹을건지\n아니면 포장할지 정해야해요!\n원하는 방법을 선택한 후\n확인 버튼을 눌러주세요!",
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
          ],
        ),
      ),
    );
  }
}
