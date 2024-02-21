import 'package:flutter/material.dart';

import 'sanpham.dart';

class QuanLySach with ChangeNotifier {
  final List<SanPham> _items = [
    SanPham(
      id: 'p1',
      title: 'SP01',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/2347/ApEVEn.jpg',
      isFavorite: true,
    ),
    SanPham(
      id: 'p2',
      title: 'SP02',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 280.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/9955/mQFzkE.jpg',
      isFavorite: true,
    ),
    SanPham(
      id: 'p3',
      title: 'SP03',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/6261/7hqzgq.jpg',
      isFavorite: true,
    ),
    SanPham(
      id: 'p4',
      title: 'SP04',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/1193/zcoQRi.jpg',
    ),
    SanPham(
      id: 'p5',
      title: 'SP05',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/2167/kOcSLP.jpg',
    ),
    SanPham(
      id: 'p6',
      title: 'SP06',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 290.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/6261/7hqzgq.jpg',
      isFavorite: true,
    ),
  ];
  int get itemCount {
    return _items.length;
  }

  List<SanPham> get items {
    return [..._items];
  }

  List<SanPham> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }

  void addProduct(SanPham product) {
    _items.add(
      product.copyWith(
        id: 'p${DateTime.now().toIso8601String()}',
      ),
    );
    notifyListeners();
  }
}

///////////////////////////
class QuanLyDongPhuc {
  final List<SanPham> _items = [
    SanPham(
      id: 'p1',
      title: 'ĐP001',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/7050/tDr0BR.jpg',
    ),
    SanPham(
      id: 'p2',
      title: 'ĐP002',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/9624/O07EJ4.jpg',
      isFavorite: true,
    ),
    SanPham(
      id: 'p3',
      title: 'ĐP003',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img923/6172/DAHtpJ.jpg',
    ),
    SanPham(
      id: 'p4',
      title: 'ĐP004',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/5760/6UNSy2.jpg',
    ),
    SanPham(
      id: 'p5',
      title: 'ĐP005',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/2341/d9JbnR.jpg',
    ),
    SanPham(
      id: 'p6',
      title: 'ĐP006',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/2417/MKTBT7.jpg',
    ),
    SanPham(
      id: 'p7',
      title: 'ĐP007',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/8094/DNmUpq.jpg',
      isFavorite: true,
    ),
    SanPham(
      id: 'p8',
      title: 'ĐP008',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img923/2866/pxU6b6.jpg',
    ),
    SanPham(
      id: 'p9',
      title: 'ĐP009',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/1453/llhJQy.jpg',
    ),
  ];
  int get itemCount {
    return _items.length;
  }

  List<SanPham> get items {
    return [..._items];
  }

  List<SanPham> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }
}

class QuanLyDungCu {
  final List<SanPham> _items = [
    SanPham(
      id: 'p1',
      title: 'DC001',
      description: 'Dụng cụ học tập cho học sinh',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/4411/tTpdBI.jpg',
      isFavorite: true,
    ),
    SanPham(
      id: 'p2',
      title: 'DC002',
      description: 'Dụng cụ học tập cho học sinh',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/7984/kTRXdy.jpg',
    ),
    SanPham(
      id: 'p3',
      title: 'DC003',
      description: 'Dụng cụ học tập cho học sinh',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img923/2331/XCtuak.jpg',
    ),
    SanPham(
      id: 'p4',
      title: 'DC004',
      description: 'Dụng cụ học tập cho học sinh',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img923/1474/1Dla95.jpg',
    ),
    SanPham(
      id: 'p5',
      title: 'DC005',
      description: 'Dụng cụ học tập cho học sinh',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/233/rV05QN.jpg',
    ),
    SanPham(
      id: 'p6',
      title: 'DC006',
      description: 'Dụng cụ học tập cho học sinh',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img923/2061/yrAx49.jpg',
      isFavorite: true,
    ),
    SanPham(
      id: 'p7',
      title: 'DC007',
      description: 'Dụng cụ học tập cho học sinh',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/645/URj0Zb.jpg',
    ),
  ];
  int get itemCount {
    return _items.length;
  }

  List<SanPham> get items {
    return [..._items];
  }

  List<SanPham> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }
}
