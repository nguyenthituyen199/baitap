import 'package:flutter/material.dart';
import '../widgets/top_bar.dart';
import '../widgets/tab_products.dart';
import '../widgets/header_card.dart';
//import '../widgets/page1.dart';
//import '../widgets/product_manager.dart';
//import '../widgets/product_detail.dart';
import 'product_screen.dart';

class Uniform extends StatefulWidget {
  const Uniform({super.key});

  @override
  State<Uniform> createState() => _HomePageState();
}

class _HomePageState extends State<Uniform> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //Top Bar
              HeaderCard(),
              TopBar(),

              TabProductsTwo(),
              Divider(
                thickness: 3,
              ),

              SizedBox(
                height: 410,
                child: SafeArea(
                  child: ProductsScreenUniform(),
                ),
              ),
              // const CustomButton(
              //   text: 'View More',
              //   width: 180,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
