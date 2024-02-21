import '../screens/hienthi_giohang.dart';
import 'package:flutter/material.dart';
import '../widgets/tieude_sanpham.dart';
import '../widgets/hienthi_cuahang.dart';
import 'quanly_hienthi.dart';

class HienThiSach extends StatefulWidget {
  const HienThiSach({super.key});

  @override
  State<HienThiSach> createState() => _HienThiSachState();
}

class _HienThiSachState extends State<HienThiSach> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //Top Bar
              CuaHang(),
              //ThanhTimKiem(),

              TabProductsOne(),
              Divider(
                thickness: 3,
              ),

              SizedBox(
                height: 500,
                child: SafeArea(
                  child: TrangHienThiSach(),
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

class HienThiDongPhuc extends StatefulWidget {
  const HienThiDongPhuc({super.key});

  @override
  State<HienThiDongPhuc> createState() => _HomePageState();
}

class _HomePageState extends State<HienThiDongPhuc> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //Top Bar
              CuaHang(),
              //ThanhTimKiem(),

              TabProductsTwo(),
              Divider(
                thickness: 3,
              ),

              SizedBox(
                height: 500,
                child: SafeArea(
                  child: TrangHienThiDongPhuc(),
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

class HienThiDungCu extends StatefulWidget {
  const HienThiDungCu({super.key});

  @override
  State<HienThiDungCu> createState() => _HienThiDungCuState();
}

class _HienThiDungCuState extends State<HienThiDungCu> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //Top Bar
              CuaHang(),
              //ThanhTimKiem(),

              TabProductsThree(),
              Divider(
                thickness: 3,
              ),

              SizedBox(
                height: 500,
                child: SafeArea(
                  child: TrangHienThiDungCu(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HienThiGioHang extends StatefulWidget {
  const HienThiGioHang({super.key});

  @override
  State<HienThiGioHang> createState() => _HienThiGioHangState();
}

class _HienThiGioHangState extends State<HienThiGioHang> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //Top Bar
              CuaHang(),
              //ThanhTimKiem(),

              //TabProductsTwo(),
              Divider(
                thickness: 3,
              ),

              SizedBox(
                height: 500,
                child: SafeArea(
                  child: CartScreen(),
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
