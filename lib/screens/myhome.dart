import 'package:cryptoapp/screens/selling_screen.dart';
import 'package:cryptoapp/screens/uniform_screen.dart';
import 'package:flutter/material.dart';
import 'learning_tool_screen.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _HomePageState();
}

class _HomePageState extends State<Myhome> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = [
    const LearningTool(),
    //const ProductsOverviewScreen(),
    const Uniform(),
    const Selling(),
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
        ],
      ),
    );
  }
}
