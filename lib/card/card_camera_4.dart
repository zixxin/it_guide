import 'package:flutter/material.dart';
import 'card_info_1.dart';

class CardCamera4Page extends StatefulWidget {
  CardCamera4Page({Key? key}) : super(key: key);
  // final String title;

  @override
  _CardCamera4PageState createState() => _CardCamera4PageState();
}

class _CardCamera4PageState extends State<CardCamera4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('결제 카드 등록'),
        centerTitle: true,
        backgroundColor: Color(0XFF242424),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 153,
            ),
            Container(
              width: 300.0,
              height: 180.0,
              child: Container(
                decoration: new BoxDecoration(
                  color: Color(0XFFC4C4C4),
                  border: Border.all(color: Color(0XFFECE200)),
                ),
              ),
            ),
            Container(
              height: 230,
            ),
            FloatingActionButton(
                onPressed: () => showDialog(
                    context: context,
                    barrierDismissible: true,
                    builder: (context) {
                      return AlertDialog(
                          content: Text(
                            "카드가 잘 인식되지 않는다면, 아래의 직접 입력 버튼을 눌러주세요!",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          actions: <Widget>[
                            TextButton(
                              child: Text('이전'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text('다음'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ]);
                    }),
                child: Image.asset('img/maru.png')),
            Container(
              height: 20,
            ),
            Text(
              '카드가 인식되지 않는다면, 직접 입력해주세요.',
            ),
            Container(
              height: 13,
            ),
            _checkButton(),
          ],
        ),
      ),
    );
  }

  Widget _checkButton() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 390,
          height: 70,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CardInfo1Page()),
              );
            },
            child: Text(
              '직접 입력',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0XFF292929)),
            ),
          ),
        ),
      ],
    );
  }
}
