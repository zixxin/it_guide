import 'package:flutter/material.dart';
import 'package:it_guide/main.dart';
import 'nzoom.dart';
import 'jzoom.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '초기 화면',
        home: Scaffold(
          appBar: AppBar(
              title: const Text('튜토리얼 메뉴'),
              centerTitle: true,
              backgroundColor: const Color(0xff5D6DBE),
              leading: IconButton(
                  alignment: Alignment.center,
                  icon: const Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  })),
          body: SizedBox(
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
        ));
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
                MaterialPageRoute(
                    builder: (context) => const ZPage(title: '초기 화면')),
              );
            },
            child: const Text(
              '새로운 회의 만들기 & 기본 조작',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0XFF5d6dbe)),
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
                MaterialPageRoute(
                    builder: (context) => const ZPage2(title: '초기 화면')),
              );
            },
            child: const Text(
              '회의 참여 하기 & 친구 초대',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0XFF5d6dbe)),
            ),
          ),
        ),
      ],
    );
  }
}
