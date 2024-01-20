import 'package:flutter/material.dart';
import 'product_detail.dart';

import 'product.dart';

class ProductGridTile extends StatelessWidget {
  const ProductGridTile(this.product, {super.key});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: ProductGridFooter(
          product: product,
          onFavoritePressed: () {
            print('produc_gird_Toggle a favorite product');
          },
          onAddToCartPressed: () {
            print('produc_gird_');
          },
        ),
        child: GestureDetector(
          onTap: () {
            //khi duoc bấm vào thì chuyển sang trang product detial screen
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => ProductDetailScreen(product),
              ),
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class ProductGridFooter extends StatelessWidget {
  const ProductGridFooter({
    super.key,
    required this.product,
    this.onFavoritePressed,
    this.onAddToCartPressed,
  });

  final Product product;
  final void Function()? onFavoritePressed;
  final void Function()? onAddToCartPressed;

  @override
  Widget build(BuildContext context) {
    return GridTileBar(
      backgroundColor: const Color.fromARGB(255, 38, 129, 204),
      leading: IconButton(
        icon: Icon(
          product.isFavorite ? Icons.favorite : Icons.favorite_border,
        ),
        color: Colors.red,
        onPressed: onFavoritePressed,
      ),
      title: Text(
        product.title,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.red, fontSize: 15),
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.shopping_cart,
        ),
        onPressed: onAddToCartPressed,
        color: Colors.red,
      ),
    );
  }
}
