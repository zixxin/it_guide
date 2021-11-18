import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/Order2.dart';

class Order1 extends StatelessWidget {
  const Order1({Key? key}) : super(key: key);

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
                        color: Colors.red[600],
                        border: Border.all(color: Colors.black, width: 1),
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
              Expanded(
                child: Container(
                  height: 200,
                  color: Colors.grey[400],
                  margin: EdgeInsets.only(
                      top: 50, left: 30, bottom: 150, right: 30),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '스파이스 치킨 버거 세트\n\n\n5900원                                        수량 1개',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(child: _text5()),
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
              Row(children: [
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
                            MaterialPageRoute(builder: (context) => Order2()),
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
              ])
            ])));
  }

  Widget _text5() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.blue[300],
          child: Text(
            '주문을 확인하고 결제해보세요!',
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
