import 'package:flutter/material.dart';

class VoiceSolutionPage extends StatefulWidget {
  VoiceSolutionPage({Key? key}) : super(key: key);
  // final String title;

  @override
  _VoiceSolutionPageState createState() => _VoiceSolutionPageState();
}

class _VoiceSolutionPageState extends State<VoiceSolutionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('보이스피싱 대처방법'),
        centerTitle: true,
        backgroundColor: Color(0XFF242424),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _text1(),
            Container(
              height: 40,
            ),
            _text1_1(),
            Container(
              height: 70,
            ),
            _text2(),
            Container(
              height: 40,
            ),
            _text2_1(),
            Container(
              height: 40,
            ),
            _text2_2(),
          ],
        ),
      ),
    );
  }

  Widget _text1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 15.0),
        Text(
          'ㅇ 금융 계좌 지급정지 요청',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _text1_1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(width: 15.0),
        Text(
          '예금이 인출되지 못하도록 신속히 경찰\n(112) 또는 해당은행에 연락하여 해당 \n계좌로 지급정치 조치',
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _text2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 15.0),
        Text(
          'ㅇ 지연 이체 서비스 등록',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _text2_1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 15.0),
        Text(
          '사전에 \'지연이체\' 신청 \n(은행 방문, 인터넷, 모바일 뱅킹)',
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _text2_2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: 15.0),
        Text(
          '> 일정 시간 (최소 3시간) 이내에 \n이체 취소 가능 (단, ATM으로 이체\n했을 경우 제도 활용 X)',
          style: TextStyle(
            fontSize: 23,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
