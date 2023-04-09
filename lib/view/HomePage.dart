import 'package:flutter/material.dart';
import 'Home.dart';
import 'Bmi.dart';
import 'Fuel.dart';
import 'Layout.dart';
import 'How_Layout.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var container = Container;
    return //DefaultTabController(
        //initialIndex: 1,
        //length: 3,
        //child:
        Scaffold(
      appBar: AppBar(
        title: const Text("data"),
        bottom: TabBar(controller: _tabController, tabs: const <Widget>[
          //controller: _tabController,
          Tab(icon: Icon(Icons.person )),
          Tab(icon: Icon(Icons.car_crash )),
          Tab(icon: Icon(Icons.wind_power )),
          Tab(icon: Icon(Icons.youtube_searched_for )),
          Tab(icon: Icon(Icons.abc_sharp )),
        ]),
      ),
      body: TabBarView(controller: _tabController, children: const <Widget>[
        Home(),
        //child: Text("1 layer"),
        Fuel(),
        Bmi(),
        Layout(),
        How_Layout()
      ]),
    );
  }
}
