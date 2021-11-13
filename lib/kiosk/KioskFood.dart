import 'package:flutter/material.dart';
import 'package:it_guide/kiosk/KioskOrder.dart';
import 'package:it_guide/main.dart';

class KioskFood extends StatefulWidget {
  KioskFood({ Key? key, title}) : super(key: key);

  @override
  _KioskFoodState createState() => _KioskFoodState();
}

class _KioskFoodState extends State<KioskFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kiosk', 
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.yellow[700]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 20,
              margin: const EdgeInsets.all(10),
              child: Text("선택한 메뉴를 확인하세요",
                textAlign: TextAlign.center,
              ),              
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.all(10),
              child: Text("1) 선택한 메뉴 :   스파이시 치킨 버거 세트 ")
            ),
            Container(
              height: 50,
            ),
            Row(
              children: [
                Expanded (
                  child: Container(
                    height: 120,
                    child: Image.asset("img/onlyburger.png"),
                  )
                ),
                Expanded (
                  child: Container(
                    height: 120,
                    child: Image.asset("img/coca.png"), // 왜 안뜨지???
                  )
                ),
                Expanded (
                  child: Container(
                    height: 120,
                    child: Image.asset("img/potato.png"),
                  )
                ),
              ],
            ),

            Container(
              height: 50,
            ),
            Container(
              height: 20,
              margin: const EdgeInsets.only(left: 10),
              child: Text("2) 주문 금액 :   5900원"),
            ),

            Container(
              height: 50,
              margin: const EdgeInsets.all(30),
              child: ElevatedButton (
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => KioskOrder()),
                  );
                },
                child: Text(
                  '카트 담기',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: // Colors.blue;
                  MaterialStateProperty.all <Color>(Colors.indigo),
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 220,
              // padding: EdgeInsets.all(120.0),
              color: Colors.grey[300],
              child: Text('카트',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
                ),
              )
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    // padding: EdgeInsets.all(120.0),
                    color: Colors.grey[400],
                    child: Text('취소',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 120,
                    // padding: EdgeInsets.all(120.0),
                    color: Colors.grey[500],
                    child: Text('결제하기',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ),
                )
              ],
            )

          ],
        )
      ),
    );
  }
}