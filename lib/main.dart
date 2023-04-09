import 'package:flutter/material.dart';
import 'view/LoginPage.dart';
import 'view/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),// isso faz com que uma camada de view se acumule
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return //DefaultTabController(
//         //initialIndex: 1,
//         //length: 3,
//         //child:
//         Scaffold(
//       appBar: AppBar(
//         title: const Text("data"),
//         bottom: TabBar(controller: _tabController, tabs: const <Widget>[
//           //controller: _tabController,
//           Tab(icon: Icon(Icons.pedal_bike_outlined)),
//           Tab(icon: Icon(Icons.airplanemode_active)),
//           Tab(icon: Icon(Icons.height)),
//         ]),
//       ),
//       body: TabBarView(controller: _tabController, children: const <Widget>[
//         Bike(),
//         //child: Text("1 layer"),
//         Plane(),
//         Car(),
//       ]),
//     );
//   }
// }
