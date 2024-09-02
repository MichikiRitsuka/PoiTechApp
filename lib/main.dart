// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'hal_home.dart' as home;
import 'hal_keranjang.dart' as keranjang;
import 'hal_pesan.dart' as pesan;
import 'hal_profil.dart' as profil;

void main() {
  runApp(new MaterialApp(
    title: "PoiTech",
    home: new Home(),
    // routes: <String, WidgetBuilder>{
    //   '/halaman_pertama': (BuildContext context) => new halaman_pertama(),
    //   '/keranjang': (BuildContext context) => new keranjang(),
    // },
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Center(
          child: new Text("PoiTech"),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a Search')));
            },
          ),
        ],
        backgroundColor: Colors.indigo[700],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Text(
                'Profil',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new home.hal_home(),
          new keranjang.hal_keranjang(),
          new pesan.hal_pesan(),
          new profil.hal_profil(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.indigo,
        child: new TabBar(controller: controller, tabs: <Widget>[
          new Tab(
            icon: new Icon(Icons.home),
          ),
          new Tab(
            icon: new Icon(Icons.shopping_cart),
          ),
          new Tab(
            icon: new Icon(Icons.mail),
          ),
          new Tab(
            icon: new Icon(Icons.account_circle),
          ),
        ]),
      ),
    );
  }
}









// class halaman_pertama extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         appBar: new AppBar(
//           backgroundColor: Colors.indigo[700],
//           title: new Center(
//             child: new Text("Poitech"),
//           ),
//           leading: new Icon(Icons.menu),
//           actions: <Widget>[
//             IconButton(
//               icon: const Icon(Icons.search),
//               tooltip: 'Search',
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('This is a Search')));
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.shopping_cart),
//               tooltip: 'Shopping Cart',
//               onPressed: () {
//                 Navigator.pushNamed(context, '/keranjang');
//               },
//             ),
//           ],
//         ),
//         body: new Container(
//           child: new Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               new kartu_menu(
//                   icon: Icons.smartphone,
//                   teks: "Smartphone",
//                   warnaIcon: Colors.indigo),
//               new kartu_menu(
//                   icon: Icons.solar_power,
//                   teks: "Solar Power",
//                   warnaIcon: Colors.indigo),
//               new kartu_menu(
//                   icon: Icons.light, teks: "Lamp", warnaIcon: Colors.indigo),
//               new kartu_menu(
//                   icon: Icons.laptop_chromebook,
//                   teks: "Chorme Book",
//                   warnaIcon: Colors.indigo),
//             ],
//           ),
//         ),

        

        // new Center(
        //   child: new Container(
        //     color: Colors.indigo[600],
        //     width: 200.0,
        //     height: 100.0,
        //     child: new Center(
        //       child: new Text(
        //         "PoiTech",
        //         style: new TextStyle(
        //             color: Colors.white,
        //             fontFamily: "Times New Roman",
        //             fontSize: 20.0),
        //       ),
        //     ),
        //   ),
        // )
//         );
//   }
// }

// class kartu_menu extends StatelessWidget {
//   kartu_menu({required this.icon, required this.teks, required this.warnaIcon});

//   final IconData icon;
//   final String teks;
//   final Color warnaIcon;

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       padding: new EdgeInsets.all(10.0),
//       child: new Card(
//           child: new Column(
//         children: <Widget>[
//           new Icon(
//             icon,
//             size: 50.0,
//             color: warnaIcon,
//           ),
//           new Text(
//             teks,
//             style: TextStyle(fontSize: 20.0),
//           ),
//           new TextButton(
//             onPressed: null,
//             child: new Text("BUY"),
//           ),
          
//         ],
//       )),
//     );
//   }
// }

// class keranjang extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         appBar: new AppBar(
//           backgroundColor: Colors.indigo[700],
//           title: new Center(
//             child: new Text("Shopping Cart"),
//           ),
//         ),
//         body: new Center(
//           child: new Text(
//             "This is Shopping Cart",
//             style: new TextStyle(fontSize: 20.0),
//           ),
//         ));
//   }
// }
