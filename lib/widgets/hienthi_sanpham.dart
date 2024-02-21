//import 'package:baocaodidong/widgets/sanpham.dart';
import 'package:flutter/material.dart';
import 'hienthi_tieude.dart';
import 'quanly_sanpham.dart';
//import 'package:provider/provider.dart';

class HienThiSach extends StatelessWidget {
  final bool showFavorites;

  const HienThiSach({
    super.key,
    required this.showFavorites,
  });
  @override
  Widget build(BuildContext context) {
    final productsManager = QuanLySach();

    final products =
        showFavorites ? productsManager.favoriteItems : productsManager.items;

    // final products = context.select<QuanLySach, List<SanPham>>(
    //     (productsManager) => showFavorites
    //         ? productsManager.favoriteItems
    //         : productsManager.items);
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => TieuDeSanPham(products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}

class HienThiDongPhuc extends StatelessWidget {
  final bool showFavorites;

  const HienThiDongPhuc({
    super.key,
    required this.showFavorites,
  });

  @override
  Widget build(BuildContext context) {
    final productsManagerUniform = QuanLyDongPhuc();

    final products = showFavorites
        ? productsManagerUniform.favoriteItems
        : productsManagerUniform.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => TieuDeSanPham(products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}

class HienThiDungCu extends StatelessWidget {
  final bool showFavorites;

  const HienThiDungCu({
    super.key,
    required this.showFavorites,
  });

  @override
  Widget build(BuildContext context) {
    final productsManagerUniform = QuanLyDungCu();

    final products = showFavorites
        ? productsManagerUniform.favoriteItems
        : productsManagerUniform.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => TieuDeSanPham(products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
