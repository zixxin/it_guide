import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/Order1.dart';
import 'package:it_guide/main.dart';

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
      body: Center(
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
              // color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                          height: 150,
                          // padding: EdgeInsets.all(120.0),
                          // color: Colors.pinkAccent,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: // Colors.blue;
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Order1()),
                              );
                            },
                            child: Image.asset("img/in.png"),
                          ))),
                  Expanded(
                      child: Container(
                          height: 150,
                          // padding: EdgeInsets.all(120.0),
                          // color: Colors.pinkAccent,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: // Colors.blue;
                                  MaterialStateProperty.all<Color>(
                                      Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Order1()),
                              );
                            },
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
                    MaterialPageRoute(builder: (context) => Order1()),
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
                  backgroundColor: // Colors.blue;
                      MaterialStateProperty.all<Color>(Colors.grey),
                ),
              ),
            ),
            Positioned(child: _text4())
          ],
        ),
      ),
    );
  }

  Widget _text4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.blue[300],
          child: Text(
            '식당에서 먹고 갈꺼인지 포장해 갈지\n선택해보세요!',
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
