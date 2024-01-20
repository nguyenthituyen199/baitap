import 'package:flutter/material.dart';

import '../styles/color.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 3.0, right: 3),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/nen.png",
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  "VĂN PHÒNG PHẨM",
                  style: TextStyle(
                    color: black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment(0.3, -1),
              child: Padding(
                padding: EdgeInsets.all(2.0),
                child: Text(
                  "GIA PHÚC",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment(-0.80, .40),
              child: Text(
                "Chuyên bán dụng cụ học tập \n Đồng phục học sinh",
                style: TextStyle(
                  color: Color.fromARGB(255, 211, 7, 24),
                  fontSize: 15,
                ),
                // fontWeight: FontWeight.bold),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Image.asset('assets/images/logo2.png', height: 100)),
          ],
        ),
      ),
    );
  }
}
