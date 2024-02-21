import 'package:flutter/material.dart';
// import 'hienthi_sanpham.dart';
//import '../screens/hienthi_giohang.dart';

enum FilterOptions { favorites, all }

class ThanhTimKiem extends StatefulWidget {
  const ThanhTimKiem({Key? key}) : super(key: key);

  @override
  State<ThanhTimKiem> createState() => _ThanhTimKiemState();
}

class _ThanhTimKiemState extends State<ThanhTimKiem> {
  // var _showOnlyFavorites = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/images/person.png",
            ),
          ),
          SizedBox(
            width: 190,
            height: 40,
            child: TextField(
              onChanged: (value) {
                //Do something wi
              },
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                //fillColor: s,
                hintText: 'Tìm kiếm',
                hintStyle: TextStyle(color: Colors.grey),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                ),
              ),
            ),
          ),
          // ProductFilterMenu(
          //   onFilterSelected: (filter) {
          //     setState(() {
          //       if (filter == FilterOptions.favorites) {
          //         _showOnlyFavorites = true;
          //       } else {
          //         _showOnlyFavorites = false;
          //       }
          //     });
          //   },
          // ),
          // IconButton(
          //   // icon: const Icon(Icons.dashboard),
          //   icon: const Icon(Icons.more_vert),
          //   color: Colors.red,
          //   onPressed: () {
          //     //do something
          //   },
          // ),
          // IconButton(
          //   // icon: const Icon(Icons.dashboard),
          //   icon: const Icon(Icons.shopping_cart_sharp),
          //   color: Colors.red,
          //   onPressed: () {
          //     //do something
          //     const CartScreen();
          //   },
          //),
          IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.blueAccent,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

// class ProductFilterMenu extends StatelessWidget {
//   const ProductFilterMenu({super.key, this.onFilterSelected});

//   final void Function(FilterOptions selectedValue)? onFilterSelected;

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton(
//       onSelected: onFilterSelected,
//       icon: const Icon(
//         Icons.more_vert,
//       ),
//       itemBuilder: (ctx) => [
//         const PopupMenuItem(
//           value: FilterOptions.favorites,
//           child: Text('Only Favorites'),
//         ),
//         const PopupMenuItem(
//           value: FilterOptions.all,
//           child: Text('Show All'),
//         ),
//       ],
//     );
//   }
// }
