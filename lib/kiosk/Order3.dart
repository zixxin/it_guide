import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/Order4.dart';
import 'package:it_guide/main.dart';

class Order3 extends StatelessWidget {
  const Order3({Key? key}) : super(key: key);

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
                            'step 1',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ))),
                ),
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black),
                      ),
                      height: 120,
                      // color: Colors.green,
                      child: Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Text(
                            'step 2',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ))),
                ),
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black),
                      ),
                      height: 120,
                      // color: Colors.green,
                      child: Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Text(
                            'step 3',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
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
                            'step 4',
                            style: TextStyle(
                                fontSize: 30.0, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ))),
                )
              ]),
              Container(
                margin: EdgeInsets.all(50),
                child: Text("신용카드를\n투입구에 넣어주세요",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              Container(
                margin: EdgeInsets.all(50),
                child: Text(
                  "결제중입니다!\n완료 전까지 빼지 말아주세요!",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(child: _text7()),
              // Container(
              //   height: 50,
              // ),
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
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                '주문 금액\n\n할인금액\n\n총 결제금액',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              )),
                              Expanded(
                                  child: Text(
                                '5900원\n\n0원\n\n5900원',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.end,
                              ))
                            ],
                          ),
                        )),
                      ],
                    ),
                  )),
              Expanded(
                child: Container(
                  height: 120,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: // Colors.blue;
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Order4()),
                        );
                      },
                      child: Container(
                          child: Text(
                        '결제완료',
                        style: TextStyle(
                            fontSize: 35.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ))),
                ),
              ),
            ])));
  }

  Widget _text7() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.blue[300],
          child: Text(
            '카드를 하단의 투입구에 넣고\n잠시만 기다려주세요!!',
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
