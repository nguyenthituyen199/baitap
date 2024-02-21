class GioHang {
  final String id;
  final String title;
  final String imageUrl;
  final int quantity;
  final double price;

  GioHang({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.quantity,
    required this.price,
  });

  GioHang copyWith({
    String? id,
    String? title,
    String? imageUrl,
    int? quantity,
    double? price,
    int? soluong,
  }) {
    return GioHang(
      id: id ?? this.id,
      title: title ?? this.title,
      imageUrl: imageUrl ?? this.imageUrl,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
    );
  }
}
