import 'product.dart';

class ProductsManagerLearning {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'SP01',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/2347/ApEVEn.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p2',
      title: 'SP02',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 280.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/9955/mQFzkE.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p3',
      title: 'SP03',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/6261/7hqzgq.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p4',
      title: 'SP04',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/1193/zcoQRi.jpg',
    ),
    Product(
      id: 'p5',
      title: 'SP05',
      description: 'SÁCH CHÂN TRỜI SÁNG TẠO',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/2167/kOcSLP.jpg',
    ),
    Product(
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

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }
}

class ProductsManagerUniform {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'ĐP001',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/7050/tDr0BR.jpg',
    ),
    Product(
      id: 'p2',
      title: 'ĐP002',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/9624/O07EJ4.jpg',
      isFavorite: true,
    ),
    Product(
      id: 'p3',
      title: 'ĐP003',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img923/6172/DAHtpJ.jpg',
    ),
    Product(
      id: 'p4',
      title: 'ĐP004',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img924/5760/6UNSy2.jpg',
    ),
    Product(
      id: 'p5',
      title: 'ĐP005',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/2341/d9JbnR.jpg',
    ),
    Product(
      id: 'p6',
      title: 'ĐP006',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/2417/MKTBT7.jpg',
    ),
    Product(
      id: 'p7',
      title: 'ĐP007',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img922/8094/DNmUpq.jpg',
    ),
    Product(
      id: 'p8',
      title: 'ĐP008',
      description: 'Đồng phục cho học sinh tiểu học',
      price: 270.99,
      imageUrl: 'https://imagizer.imageshack.com/img923/2866/pxU6b6.jpg',
    ),
    Product(
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

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((item) => item.isFavorite).toList();
  }
}
