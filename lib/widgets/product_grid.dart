import 'package:flutter/material.dart';

import 'product_grid_title.dart';
import 'product_manager.dart';

class ProductsGrid extends StatelessWidget {
  final bool showFavorites;

  const ProductsGrid({
    super.key,
    required this.showFavorites,
  });

  @override
  Widget build(BuildContext context) {
    final productsManager = ProductsManagerLearning();

    final products =
        showFavorites ? productsManager.favoriteItems : productsManager.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductGridTile(products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}

class ProductsGridUniform extends StatelessWidget {
  final bool showFavorites;

  const ProductsGridUniform({
    super.key,
    required this.showFavorites,
  });

  @override
  Widget build(BuildContext context) {
    final productsManagerUniform = ProductsManagerUniform();

    final products = showFavorites
        ? productsManagerUniform.favoriteItems
        : productsManagerUniform.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductGridTile(products[i]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
