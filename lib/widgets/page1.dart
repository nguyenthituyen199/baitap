import 'package:flutter/material.dart';
//import 'app_theme.dart';
//import 'product.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});
  final Future<List<ProfileItem>> _profilesitem =
      ProfileItem.loadProfileItem(100);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _profilesitem,
        builder: (context, AsyncSnapshot<List<ProfileItem>> snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final items = snapshot.data;

          return Column(
            children: [
              const Text('Top sản phẩm',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)),
              Expanded(
                child: GridView.builder(
                  //chi dinh sap xep cac phan tu con
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1 / 1.2),
                  itemCount: items!.length,

                  itemBuilder: (BuildContext context, int index) {
                    final profileItem = items[index];
                    return GridTile(
                      footer: GridTileBar(
                        backgroundColor: Colors.blue,
                        title: Text(profileItem.name),
                        subtitle: Text(profileItem.price),
                        trailing: const Icon(Icons.more_vert),
                      ),
                      child: Image.asset(profileItem.image),
                    );
                  },
                ),
              ),
            ],
          );
        });
  }
}

class ProfileItem {
  final String name;
  final String price;
  final String image;
  const ProfileItem(this.name, this.price, this.image);

  static Future<List<ProfileItem>> loadProfileItem(int count) async {
    await Future.delayed(const Duration(seconds: 1));
    final profilePrices = [
      '\$10.0',
      '\$20.0',
      '\$30.0',
      '\$40.0',
      '\$50.0',
      '\$60.0',
      '\$70.0',
      '\$80.0',
      '\$90.0',
      '\$100.0',
    ];

    return List.generate(
      count,
      (index) => ProfileItem(
        'Name $index',
        profilePrices[index % profilePrices.length],
        'assets/products/img-${(index % 6) + 1}.png',
      ),
    );
  }
// const int count = 1;
}
