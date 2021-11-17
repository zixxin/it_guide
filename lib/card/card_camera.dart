import 'package:flutter/material.dart';
// import 'package:it_guide/card/card_info_1.dart';

class CardCameraPage extends StatefulWidget {
  CardCameraPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _CardCameraPageState createState() => _CardCameraPageState();
}

class _CardCameraPageState extends State<CardCameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('결제 카드 등록'),
        centerTitle: true,
        backgroundColor: Color(0XFF242424),
        actions: [
          IconButton(
            alignment: Alignment.center,
            icon: Icon(Icons.arrow_forward),
            onPressed: () => showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return AlertDialog(
                      content: Text(
                        "안녕하세요! 마루에요! 결제를 해야하는데 카드를 등록하는 방법을 모르시겠다구요? 지금부터 제가 차근차근 알려드릴테니 잘 따라해보세요!",
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
                          onPressed: () => showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) {
                                return AlertDialog(
                                    content: Text(
                                      "우선 결제 카드로 등록하고 싶은 카드를 꺼내서 준비해주세요!",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
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
                                        onPressed: () => showDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            builder: (context) {
                                              return AlertDialog(
                                                  content: Text(
                                                    "준비된 카드의 정보가 적힌 면을 아래의 노란 사각형 틀 안에 맞춰주세요!",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                  actions: <Widget>[
                                                    TextButton(
                                                      child: Text('이전'),
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                    ),
                                                    TextButton(
                                                      child: Text('다음'),
                                                      onPressed: () =>
                                                          showDialog(
                                                              context: context,
                                                              barrierDismissible:
                                                                  false,
                                                              builder:
                                                                  (context) {
                                                                return AlertDialog(
                                                                    content:
                                                                        Text(
                                                                      "카드가 잘 인식되지 않는다면, 아래의 직접 입력 버튼을 눌러주세요!",
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              20,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                    ),
                                                                    actions: <
                                                                        Widget>[
                                                                      TextButton(
                                                                        child: Text(
                                                                            '이전'),
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.of(context)
                                                                              .pop();
                                                                        },
                                                                      ),
                                                                      TextButton(
                                                                        child: Text(
                                                                            '다음'),
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.of(context)
                                                                              .pop();
                                                                        },
                                                                      ),
                                                                    ]);
                                                              }),
                                                    ),
                                                  ]);
                                            }),
                                      ),
                                    ]);
                              }),
                        ),
                      ]);
                }),
          ),
        ],
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
              height: 300,
            ),
            Text(
              '카드가 인식되지 않는다면, 직접 입력해주세요.',
            ),
            Container(
              height: 20,
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
                MaterialPageRoute(builder: (context) => CardInfoPage()),
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
