import 'package:flutter/material.dart';
import '../model/User.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    
    final TextEditingController emailController = TextEditingController();
    final TextEditingController nameController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Login'),
      ),
      body: Center(
          child: Container(
        color: Colors.white,
        //margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Image.network(
                'https://cdn-icons-png.flaticon.com/512/4645/4645949.png',
                width: 100),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'email',
              ),
            ),
            TextField(
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                labelText: 'name',
              ),
            ),
            TextButton(
                onPressed: () {
                  

                  if (emailController.text == 'Otilio@gruna.com' && nameController.text == 'Otilio') {
                  User user = User('Otilio', 'Otilio@gruna.com');
                  Navigator.pushNamed(context, '/home');
                  // Navigator.pushNamed(context, '/home',
                  //     arguments: {'email': user.email, 'name': user.name});
                  }
                },
                child: const Text('Sing In'))
          ],
        ),
      )),
    );
  }
}
