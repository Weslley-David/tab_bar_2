import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    String email = 'Otilio@gruna.com';
    String name = "Otilio";
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('home'),
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            //margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(50),
            child: Column(
              children: [
                Image.network(
                    'https://wl-incrivel.cf.tsp.li/resize/728x/jpg/f6e/ef6/b5b68253409b796f61f6ecd1f1.jpg',
                    width: 100),
                Text('$email está na sessão'),
                Text('sob o nome de: $name '),
              ],
            ),
          ),
        ));
  }
}
