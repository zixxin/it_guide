import 'package:flutter/material.dart';
import 'package:it_guide/main.dart';

class Order4 extends StatelessWidget {
  const Order4({Key? key}) : super(key: key);

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
                        color: Colors.red,
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
                margin: EdgeInsets.only(top: 100),
                child: Text(
                  "주문이 완료되었습니다!",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
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
                      color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 30),
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
              Positioned(child: _text8()),
              Container(
                margin: EdgeInsets.only(top: 50, left: 30, right: 30),
                height: 100,
                color: Colors.grey[500],
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: // Colors.blue;
                          MaterialStateProperty.all<Color>(Colors.indigo),
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
                      style: TextStyle(
                          fontSize: 35.0, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ))),
              ),
            ])));
  }

  Widget _text8() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.blue[300],
          child: Text(
            '키오스크 기능을 모두 배웠어요!\n정말 멋져요!',
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
