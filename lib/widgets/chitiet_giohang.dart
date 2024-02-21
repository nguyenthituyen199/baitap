//import 'package:cryptoapp/widgets/quanly_sanpham.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'gio_hang.dart';
//import 'quanly_giohang.dart';

class CartItemCart extends StatelessWidget {
  final String productID;
  final GioHang cartItem;

  const CartItemCart({
    required this.cartItem,
    required this.productID,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(cartItem.id),
      background: Container(
        color: Theme.of(context).colorScheme.error,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        print('Cart item dismissed');
      },
      child: ItemInfoCard(cartItem),
    );
  }
}

class ItemInfoCard extends StatelessWidget {
  const ItemInfoCard(
    this.cartItem, {
    super.key,
  });
  final GioHang cartItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              cartItem.imageUrl,
              fit: BoxFit.cover,
              width: 80,
              height: 80,
            ),
          ),
          title: Text(cartItem.title),
          subtitle: Text('Total: \$${(cartItem.price * cartItem.quantity)}'),
          trailing: Text(
            '${cartItem.quantity} x \$${cartItem.price}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ),
    );
  }
}
