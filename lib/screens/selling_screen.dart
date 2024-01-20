import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';
import '../widgets/tab_products.dart';
import '../widgets/header_card.dart';
import '../widgets/page1.dart';

class Selling extends StatefulWidget {
  const Selling({super.key});

  @override
  State<Selling> createState() => _HomePageState();
}

class _HomePageState extends State<Selling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //Top Bar
              const HeaderCard(),
              const TopBar(),

              const TabProductsThree(),
              const Divider(
                thickness: 3,
              ),

              SizedBox(
                height: 600,
                child: Page1(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
