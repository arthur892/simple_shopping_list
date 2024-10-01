import 'package:flutter/material.dart';
import 'package:simple_shopping_list/screens/cart.dart';
import 'package:simple_shopping_list/screens/landing.dart';
import 'package:simple_shopping_list/screens/product_detail.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Simple Shopping List",
      home: myHomePage(),
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

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
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
