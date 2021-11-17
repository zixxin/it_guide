import 'package:flutter/material.dart';
import 'package:it_guide/vf/voice_type.dart';
import 'package:it_guide/vf/voice_solution.dart';

class ITMenuPage extends StatefulWidget {
  ITMenuPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ITMenuPageState createState() => _ITMenuPageState();
}

class _ITMenuPageState extends State<ITMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('안전한 IT 생활'),
        centerTitle: true,
        backgroundColor: Color(0XFF242424),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 70,
            ),
            _checkButton1(),
            Container(
              height: 30,
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
                MaterialPageRoute(builder: (context) => VoiceTypePage()),
              );
            },
            child: Text(
              '보이스피싱 유형',
              style: TextStyle(
                fontSize: 30,
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
                MaterialPageRoute(builder: (context) => VoiceSolutionPage()),
              );
            },
            child: Text(
              '보이스피싱 대처방안',
              style: TextStyle(
                fontSize: 30,
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
