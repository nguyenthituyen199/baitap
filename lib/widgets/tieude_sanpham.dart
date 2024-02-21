import 'package:flutter/material.dart';

class TabProductsOne extends StatelessWidget {
  const TabProductsOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Sách giáo khoa",
            style: TextStyle(
                color: Colors.red,
                // fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            "Đồng phục",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            "Dụng cụ học tập",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class TabProductsTwo extends StatelessWidget {
  const TabProductsTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Sách giáo khoa",
            style: TextStyle(
                color: Colors.grey,
                // fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            "Đồng phục",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            "Dụng cụ học tập",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class TabProductsThree extends StatelessWidget {
  const TabProductsThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Sách giáo khoa",
            style: TextStyle(
                color: Colors.grey,
                // fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            "Đồng phục",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            "Dụng cụ học tập",
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
