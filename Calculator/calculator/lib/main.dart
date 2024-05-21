import 'package:flutter/material.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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

class _MyHomePageState extends State<MyHomePage> {
  Widget customButton(String text, Color color, BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 25),
        child: SizedBox(
          // height: MediaQuery.of(context).size.height * 0.095,
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.2,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              foregroundColor: MaterialStateProperty.all(Colors.white),
              overlayColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 224, 223, 229)),
            ),
            onPressed: () {
              btnValue(text);
            },
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
          ),
        ),
      ),
    );
  }

  int num1 = 0;
  int num2 = 0;
  String result = '';
  String textToDisplay = '';
  String opeartor = '';

  void btnValue(String btnvalue) {
    if (btnvalue == '') {
      result = '';
      num1 = 0;
      num2 = 0;
      opeartor = '';
      textToDisplay = '';
    } else if (btnvalue == '+' ||
        btnvalue == '-' ||
        btnvalue == '*' ||
        btnvalue == '/') {
      num1 = int.parse(textToDisplay);
      result = '';
      opeartor = btnvalue;
    } else if (btnvalue == '=') {
      num2 = int.parse(textToDisplay);
      switch (opeartor) {
        case '+':
          result = (num1 + num2).toString();
          break;
        case '-':
          result = (num1 - num2).toString();
          break;
        case '*':
          result = (num1 * num2).toString();
          break;
        case '/':
          result = (num1 / num2).toString();
          break;
      }
    } else {
      result = int.parse(textToDisplay + btnvalue).toString();
    }
    setState(() {
      textToDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black12,
      body: Container(
        margin: const EdgeInsets.only(left: 10, bottom: 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                alignment: Alignment.bottomRight,
                child: Text(
                  textToDisplay,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customButton(
                      '9', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton(
                      '8', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton(
                      '7', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton('+', Colors.orange, context)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customButton(
                      '6', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton(
                      '5', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton(
                      '4', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton('-', Colors.orange, context)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customButton(
                      '3', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton(
                      '2', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton(
                      '1', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton('*', Colors.orange, context)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customButton(
                      'C', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton(
                      '0', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton(
                      '/', const Color.fromARGB(255, 57, 55, 55), context),
                  customButton('=', Colors.orange, context)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
