import 'package:flutter/material.dart';
import 'trang_hienthi_sach.dart';

class DieuHuong extends StatefulWidget {
  const DieuHuong({super.key});

  @override
  State<DieuHuong> createState() => _DieuHuongState();
}

class _DieuHuongState extends State<DieuHuong> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = [
    const HienThiSach(),
    const HienThiDongPhuc(),
    const HienThiDungCu(),
    const HienThiGioHang()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BÁO CÁO DI ĐỘNG'),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(color: Colors.yellow, fontSize: 25),
      ),
      //tieu de trang

      body: _pages[_selectedIndex],

      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          // ham thay doi gia tri index tab duoc chon
          _selectedIndex = index;
          setState(() {});
        },
        destinations: const [
          NavigationDestination(
              //them the ben duoi
              icon: Icon(Icons.home),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.track_changes), label: 'Đồng Phục'),
          NavigationDestination(
              icon: Icon(Icons.sledding), label: 'Dụng cụ học tập'),
          NavigationDestination(
              icon: Icon(Icons.shopping_cart_sharp), label: 'Giỏ hàng'),
        ],
      ),
    );
  }
}
