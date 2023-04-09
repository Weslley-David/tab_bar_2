import 'package:flutter/material.dart';

class Fuel extends StatefulWidget {
  const Fuel({super.key});

  @override
  State<Fuel> createState() => _FuelState();
}

class _FuelState extends State<Fuel> {
  //declarar variáveis e funções aqui
  double result = 0;
  String resultText = "";
  final TextEditingController gasolina = TextEditingController();
  final TextEditingController alcool = TextEditingController();
  void clearInput(){
    gasolina.clear();
    alcool.clear();
    setState(() {
      resultText = "";
    });
  
  }
  void bmiCalc() {
    double tempGasolina = double.tryParse(gasolina.text) ?? 1;
    double tempAlcool = double.tryParse(alcool.text) ?? 1;
    double result = (tempAlcool / tempGasolina * 100);
    String tempStr;

    if (result >=70) {
      tempStr = 'alcool';
    } else {
      tempStr= 'gasolina';
    }
    setState(() {
      resultText = 'Abasteça com  $tempStr, resultado: ${result.toStringAsFixed(2)}';
    });
  }

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculo Gasolina X Alcool'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(onPressed: () { clearInput();}, icon: const Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(7, 7, 7, 10),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Center(
                child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/1656/1656937.png',
                      width: MediaQuery.of(context).size.height * 0.5,),
              ),
              TextField(
                controller: alcool,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Alcool',
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 15)),
              ),
              const SizedBox(
                width: 100,
                height: 10,
              ),
              TextField(
                controller: gasolina,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Gasolina',
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 15)),
              ),
              const SizedBox(
                width: 100,
                height: 10,
              ),
              SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      bmiCalc();
                    },
                    child: const Text("calcular",
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                  )),
              const SizedBox(
                width: 100,
                height: 10,
              ),
              Center(
                child: Text(resultText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
