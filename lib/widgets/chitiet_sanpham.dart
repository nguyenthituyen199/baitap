import 'package:flutter/material.dart';
import 'sanpham.dart';

class HienThiChiTietSP extends StatefulWidget {
  const HienThiChiTietSP(
    this.product, {
    super.key,
  });
  final SanPham product;

  @override
  State<HienThiChiTietSP> createState() => _HienThiChiTietSPState();
}

class _HienThiChiTietSPState extends State<HienThiChiTietSP> {
  int _soluong = 0;
  void _tangSoLuong() {
    setState(() {
      _soluong++;
    });
  }

  void _giamSoLuong() {
    setState(() {
      if (_soluong > 0) {
        _soluong--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 550,
              width: double.infinity,
              child: Image.network(widget.product.imageUrl, fit: BoxFit.cover),
            ),
            const SizedBox(height: 10),
            Text(
              '\$${widget.product.price}',
              style: const TextStyle(color: Colors.grey, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                widget.product.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Thêm vào giỏ hàng'),
                IconButton(onPressed: _giamSoLuong, icon: Icon(Icons.remove)),
                Text('$_soluong'),
                IconButton(onPressed: _tangSoLuong, icon: Icon(Icons.add)),
                IconButton(
                  icon: const Icon(Icons.add_shopping_cart_sharp),
                  onPressed: () {
                    print('Thêm vào giỏ hàng trang chi tiết sản phẩm');
                  },
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
