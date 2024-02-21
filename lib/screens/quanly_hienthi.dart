import 'package:flutter/material.dart';

import '../widgets/hienthi_sanpham.dart';
import '../widgets/thanh_tim_kiem.dart';

enum FilterOptions { favorites, all }

class TrangHienThiSach extends StatefulWidget {
  const TrangHienThiSach({super.key});

  @override
  State<TrangHienThiSach> createState() => _TrangHienThiSachState();
}

class _TrangHienThiSachState extends State<TrangHienThiSach> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tất cả sản phẩm'),
          actions: <Widget>[
            const ThanhTimKiem(),
            ProductFilterMenu(
              onFilterSelected: (filter) {
                setState(() {
                  if (filter == FilterOptions.favorites) {
                    _showOnlyFavorites = true;
                  } else {
                    _showOnlyFavorites = false;
                  }
                });
              },
            ),
            //const ShoppingCartButton()
          ],
        ),
        body: HienThiSach(
          showFavorites: _showOnlyFavorites,
        ));
  }
}

////////////////////////////////////////////////
///
/////////////////////
class TrangHienThiDungCu extends StatefulWidget {
  const TrangHienThiDungCu({super.key});

  @override
  State<TrangHienThiDungCu> createState() => _TrangHienThiDungCuState();
}

class _TrangHienThiDungCuState extends State<TrangHienThiDungCu> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Text('Tất cả sản phẩm '),
          actions: <Widget>[
            const ThanhTimKiem(),
            ProductFilterMenu(
              onFilterSelected: (filter) {
                setState(() {
                  if (filter == FilterOptions.favorites) {
                    _showOnlyFavorites = true;
                  } else {
                    _showOnlyFavorites = false;
                  }
                });
              },
            ),
            //const ShoppingCartButton()
          ],
        ),
        body: HienThiDungCu(
          showFavorites: _showOnlyFavorites,
        ));
  }
}

////////////////////////////////////////
class TrangHienThiDongPhuc extends StatefulWidget {
  const TrangHienThiDongPhuc({super.key});

  @override
  State<TrangHienThiDongPhuc> createState() => _TrangHienThiDongPhucState();
}

class _TrangHienThiDongPhucState extends State<TrangHienThiDongPhuc> {
  var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tất cả sản phẩm '),
          actions: <Widget>[
            const ThanhTimKiem(),
            ProductFilterMenu(
              onFilterSelected: (filter) {
                setState(() {
                  if (filter == FilterOptions.favorites) {
                    _showOnlyFavorites = true;
                  } else {
                    _showOnlyFavorites = false;
                  }
                });
              },
            ),
            //const ShoppingCartButton()
          ],
        ),
        body: HienThiDongPhuc(
          showFavorites: _showOnlyFavorites,
        ));
  }
}

/////////////
class TrangHienThiGioHang extends StatefulWidget {
  const TrangHienThiGioHang({super.key});

  @override
  State<TrangHienThiGioHang> createState() => _TrangHienThiGioHangState();
}

class _TrangHienThiGioHangState extends State<TrangHienThiGioHang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Giỏ hàng'),
        ),
        body: const TrangHienThiGioHang());
  }
}

////////////////////////////////////////////////////////
class ProductFilterMenu extends StatelessWidget {
  const ProductFilterMenu({super.key, this.onFilterSelected});

  final void Function(FilterOptions selectedValue)? onFilterSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: onFilterSelected,
      icon: const Icon(
        Icons.more_vert,
      ),
      itemBuilder: (ctx) => [
        const PopupMenuItem(
          value: FilterOptions.favorites,
          child: Text('Sản phẩm yêu thích'),
        ),
        const PopupMenuItem(
          value: FilterOptions.all,
          child: Text('Hiển thị tất cả'),
        ),
      ],
    );
  }
}

// class ShoppingCartButton extends StatelessWidget {
//   const ShoppingCartButton({super.key, this.onPressed});
//   final void Function()? onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: const Icon(
//         Icons.shopping_cart,
//       ),
//       onPressed: onPressed,
//     );
//   }
// }
