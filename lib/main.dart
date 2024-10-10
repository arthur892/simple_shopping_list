import 'package:flutter/material.dart';
import 'package:simple_shopping_list/data/cart_data.dart';
import 'package:simple_shopping_list/screens/cart.dart';
import 'package:simple_shopping_list/screens/products_list_view.dart';
import 'package:simple_shopping_list/screens/product_detail.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  //final String appTitle = "Simple Shopping List";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "MainApp",
      home: MyHomePage(),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text("test"),
  //       ),
  //       drawer: Drawer(
  //         child: ListView(
  //           children: [
  //             const DrawerHeader(
  //               decoration: BoxDecoration(color: Colors.amber),
  //               child: Text("DrawerHeader"),
  //             ),
  //             const ListTile(
  //               title: Text("Produkte"),
  //             ),
  //             ListTile(
  //               title: const Text("Warenkorb"),
  //               onTap: () {
  //                 Navigator.pop(context);
  //                 //MaterialPageRoute(builder: (context) => CartScreen()));
  //                 //ScaffoldMessenger.of(context).build(CartScreen())
  //               },
  //             )
  //           ],
  //         ),
  //       ),
  //       body: Center(
  //         child: LandingListView(),
  //       ),
  //     ),
  //   );
  // }

  Drawer myDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.amber),
            child: Text("DrawerHeader"),
          ),
          const ListTile(
            title: Text("Produkte"),
          ),
          ListTile(
            title: const Text("Warenkorb"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
              //ScaffoldMessenger.of(context).build(CartScreen())
            },
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgets = [ProductsListView(), CartScreen()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("myHomePageState"),
      ),
      body: _widgets[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Text("DrawerHeader"),
            ),
            ListTile(
              title: Text("Produkte"),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
                //MaterialPageRoute(builder: (context) => CartScreen()));
                //ScaffoldMessenger.of(context).build(CartScreen())
              },
            ),
            ListTile(
              title: const Text("Warenkorb"),
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
                //MaterialPageRoute(builder: (context) => CartScreen()));
                //ScaffoldMessenger.of(context).build(CartScreen())
              },
            )
          ],
        ),
      ),
    );
  }
}


// class Drawer extends StatefulWidget {
//   const Drawer({super.key});

//   @override
//   State<Drawer> createState() => _DrawerState();
// }

// class _DrawerState extends State<Drawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Drawer als Stateful Widget"),
//       ),
//     );
//   }
// }
