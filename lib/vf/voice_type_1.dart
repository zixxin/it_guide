import 'package:flutter/material.dart';

class VoiceType1Page extends StatefulWidget {
  VoiceType1Page({Key? key}) : super(key: key);
  // final String title;

  @override
  _VoiceType1PageState createState() => _VoiceType1PageState();
}

class _VoiceType1PageState extends State<VoiceType1Page> {
  var isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('보이스피싱 - 수사기관 사칭'),
        centerTitle: true,
        backgroundColor: Color(0XFF242424),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                width: 200, height: 200, child: Image.asset('images/재생버튼.png')),
            Container(
              height: 80,
            ),
            _text1(),
          ],
        ),
      ),
    );
  }

  Widget _text1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '위의 재생 버튼을 클릭해보아요!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
