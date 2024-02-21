import '../widgets/gio_hang.dart';
import 'dathang.dart';

class OrdersManager {
  final List<OrderItem> _orders = [
    OrderItem(
      id: 'o1',
      amount: 59.98,
      products: [
        GioHang(
          id: 'c1',
          title: 'Red Shirt',
          imageUrl:
              'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
          quantity: 2,
          price: 29.99,
        )
        // CartItem(
        //   id: 'o2',
        //   title: 'Trousers',
        //   imageUrl:
        //       'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
        //   quantity: 1,
        //   price: 39.99,
        // ),
        // CartItem(
        //   id: 'o3',
        //   title: 'Yellow Scarf',
        //   imageUrl:
        //       'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
        //   quantity: 2,
        //   price: 19.99,
        // )
      ],
      dateTime: DateTime.now(),
    )
  ];
  int get orderCount {
    return _orders.length;
  }

  List<OrderItem> get orders {
    return [..._orders];
  }
}
