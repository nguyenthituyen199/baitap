// import 'package:baocaodidong/screens/hien_thi.dart';

//import 'sanpham.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/foundation.dart';
import 'gio_hang.dart';

class QuanLyGioHang {
  final Map<String, GioHang> _items = {
    'p1': GioHang(
      id: 'c1',
      title: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      imageUrl: 'https://imagizer.imageshack.com/img922/9955/mQFzkE.jpg',
      price: 289.99,
      quantity: 2,
    ),
    'p2': GioHang(
      id: 'c2',
      title: 'Đồng phục cho học sinh tiểu học',
      imageUrl: 'https://imagizer.imageshack.com/img924/7050/tDr0BR.jpg',
      price: 279.99,
      quantity: 3,
    ),
    'p3': GioHang(
      id: 'p3',
      title: 'Dụng cụ học tập cho học sinh',
      price: 170.99,
      imageUrl: 'https://imagizer.imageshack.com/img923/2331/XCtuak.jpg',
      quantity: 2,
    ),
  };
  int get productCount {
    return _items.length;
  }

  List<GioHang> get products {
    return _items.values.toList();
  }

  Iterable<MapEntry<String, GioHang>> get productEntries {
    return {..._items}.entries;
  }

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.price * cartItem.quantity;
    });
    return total;
  }

  // void addItem(SanPham product) {
  //   if (_items.containsKey(product.id)) {
  //     _items.update(
  //       product.id!,
  //       (value) => value.copyWith(quantity: value.quantity + 1),
  //     );
  //   } else {
  //     _items.putIfAbsent(
  //       product.id!,
  //       () => GioHang(
  //         id: 'c${DateTime.now().toIso8601String()}',
  //         title: product.title,
  //         imageUrl: product.imageUrl,
  //         quantity: 1,
  //         price: product.price,
  //       ),
  //     );
  //   }
  //   notifyListeners();
  // }

  // void removeItem(String productId) {
  //   if (!_items.containsKey(productId)) {
  //     return;
  //   }
  //   if (_items[productId]?.quantity as num > 1) {
  //     _items.update(
  //       productId,
  //       (value) => value.copyWith(quantity: value.quantity - 1),
  //     );
  //   } else {
  //     _items.remove(productId);
  //   }
  //   notifyListeners();
  // }

  // void clearItem(String productId) {
  //   _items.remove(productId);
  //   notifyListeners();
  // }
}
