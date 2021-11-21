import 'package:flutter/material.dart';
import 'voice_type_1.dart';
import 'voice_type_2.dart';

class VoiceTypePage extends StatefulWidget {
  VoiceTypePage({Key? key}) : super(key: key);
  // final String title;

  @override
  _VoiceTypePageState createState() => _VoiceTypePageState();
}

class _VoiceTypePageState extends State<VoiceTypePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('보이스피싱 유형'),
        centerTitle: true,
        backgroundColor: Color(0XFF242424),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                width: 600,
                height: 400,
                child: Image.asset('img/voice_kind.jpeg')),
            Container(
              height: 30,
            ),
            _checkButton1(),
            Container(
              height: 20,
            ),
            _checkButton2(),
          ],
        ),
      ),
    );
  }

  Widget _checkButton1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 320,
          height: 80,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VoiceType1Page()),
              );
            },
            child: Text(
              '수사기관 사칭 보이스피싱 듣기',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0XFF242424)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _checkButton2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 320,
          height: 80,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VoiceType2Page()),
              );
            },
            child: Text(
              '일반 사기 보이스피싱 듣기',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0XFF242424)),
            ),
          ),
        ),
      ],
    );
  }
}
