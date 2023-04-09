import 'package:flutter/material.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  //declarar variáveis e funções aqui
  double result = 0;
  String resultText = "";
  final TextEditingController height = TextEditingController();
  final TextEditingController width = TextEditingController();
  void clearInput(){
    height.clear();
    width.clear();
    setState(() {
      resultText = "";
    });
  
  }
  void bmiCalc() {
    double tempHeight = double.tryParse(height.text) ?? 1;
    double tempWidth = double.tryParse(width.text) ?? 1;
    double result = (tempWidth / (tempHeight * tempHeight));

    if (result < 18.5) {
      resultText = 'underweight range';
    } else if (result >= 18.5 && result < 25) {
      resultText = 'healthy weight range';
    } else if (result >= 25 && result < 30) {
      resultText = 'overweight range.';
    } else {
      resultText = 'obesity range';
    }
    setState(() {
      resultText = '$resultText with ${result.toStringAsFixed(2)}';
    });
  }

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculo imc'),
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
                  child: Icon(
                Icons.person,
                color: Colors.blue,
                size: MediaQuery.of(context).size.height * 0.3,
              )),
              TextField(
                controller: width,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Peso (Kg) ',
                    labelStyle: TextStyle(color: Colors.blue, fontSize: 15)),
              ),
              const SizedBox(
                width: 100,
                height: 10,
              ),
              TextField(
                controller: height,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'altura (Kg) ',
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
                child: Text('your bmi is $resultText'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
