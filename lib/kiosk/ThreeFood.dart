import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/KioskMain.dart';
import 'package:it_guide/kiosk/MenuSelect.dart';

class ThreeFood extends StatefulWidget {
  ThreeFood({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _kiosk_mainState createState() => _kiosk_mainState();
}

class _kiosk_mainState extends State<ThreeFood> {
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
            Container(
              height: 20,
              margin: const EdgeInsets.all(10),
              child: Text(
                "선택한 메뉴를 확인하세요",
                style: TextStyle(
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: 10,
            ),
            Container(
                height: 20,
                margin: const EdgeInsets.all(10),
                child: Text(
                  "1) 선택한 메뉴 :   스파이시 치킨 버거 세트 ",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                )),
            Container(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 120,
                  child: Image.asset("img/onlyburger.png"),
                )),
                Expanded(
                    child: Container(
                  height: 120,
                  child: Image.asset("img/coca.png"),
                )),
                Expanded(
                    child: Container(
                  height: 120,
                  child: Image.asset("img/potato.png"),
                )),
              ],
            ),
            Container(
              height: 25,
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.only(left: 10),
              child: Text(
                "2) 주문 금액 :   5900원",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
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
                        builder: (context) => MenuSelect(title: "키오스크")),
                  );
                },
                child: Text(
                  '카트 담기',
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
            Container(
              height: 15,
            ),
            FloatingActionButton(
                onPressed: () => showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return AlertDialog(
                          content: const Text(
                            "고른 치킨의 옵션들이 보이네요!\n 옵션을 모두 확인한 후\n 메뉴를 카드에 담아보세요!",
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => KioskMain(title: "키오스크")),
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
