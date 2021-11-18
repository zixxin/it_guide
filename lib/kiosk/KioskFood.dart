import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/KioskOrder.dart';

class KioskFood extends StatefulWidget {
  KioskFood({Key? key, title}) : super(key: key);

  @override
  _KioskFoodState createState() => _KioskFoodState();
}

class _KioskFoodState extends State<KioskFood> {
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
              height: 20,
              margin: const EdgeInsets.all(10),
              child: Text(
                "1) 선택한 메뉴 :   스파이시 치킨 버거 세트 ",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              )),
          Container(
            height: 50,
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
            height: 50,
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
                  MaterialPageRoute(builder: (context) => KioskOrder()),
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
                backgroundColor: // Colors.blue;
                    MaterialStateProperty.all<Color>(Colors.indigo),
              ),
            ),
          ),
          Positioned(child: _text2()),
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 200,
            color: Colors.grey[300],
            child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  '카트',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                )),
          ),
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
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  height: 120,
                  // padding: EdgeInsets.all(120.0),
                  color: Colors.grey[500],
                  child: Container(
                      margin: EdgeInsets.only(top: 40),
                      child: Text(
                        '결제하기',
                        style: TextStyle(
                            fontSize: 35.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      )),
                ),
              )
            ],
          )
        ],
      )),
    );
  }

  Widget _text2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.blue[300],
          child: Text(
            '원하는 옵션을 확인하고 카트에 담으세요!',
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
