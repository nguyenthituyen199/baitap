//import 'quanly_giohang.dart';
import 'package:flutter/material.dart';
import 'chitiet_sanpham.dart';
//import 'package:provider/provider.dart';
import 'sanpham.dart';

class TieuDeSanPham extends StatelessWidget {
  const TieuDeSanPham(this.product, {super.key});
  final SanPham product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: ChanSanPham(
          product: product,
          onFavoritePressed: () {
            product.isFavorite = !product.isFavorite;
            //print('produc_gird_Toggle a favorite product');
          },
          onAddToCartPressed: () {
            print('produc_gird_');

            ScaffoldMessenger.of(context)
              ..hideCurrentMaterialBanner()
              ..showSnackBar(
                SnackBar(
                  content: const Text(
                    'Item added to cart',
                  ),
                  duration: const Duration(
                    seconds: 2,
                  ),
                  action: SnackBarAction(
                      label: 'UNDO',
                      onPressed: () {
                        // cart.removeItem(product.id!);
                      }),
                ),
              );
          },
        ),
        child: GestureDetector(
          onTap: () {
            //khi duoc bấm vào thì chuyển sang trang product detial screen
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => HienThiChiTietSP(product),
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

class ChanSanPham extends StatelessWidget {
  const ChanSanPham({
    super.key,
    required this.product,
    this.onFavoritePressed,
    this.onAddToCartPressed,
  });

  final SanPham product;
  final void Function()? onFavoritePressed;
  final void Function()? onAddToCartPressed;

  @override
  Widget build(BuildContext context) {
    return GridTileBar(
      backgroundColor: const Color.fromARGB(255, 38, 129, 204),
      leading: ValueListenableBuilder<bool>(
        //widget lắng nghe thay đổi với nút like
        valueListenable: product.isFavoriteListenable,
        builder: (ctx, isFavorite, child) {
          return IconButton(
            icon: Icon(
              product.isFavorite ? Icons.favorite : Icons.favorite_border,
            ),
            color: Colors.red,
            onPressed: onFavoritePressed,
          );
        },
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
