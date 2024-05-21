import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 10, 10, 50),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
            Text(
              'Flutter Demo',
              style: TextStyle(color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              color: Colors.white,
            )
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Container 1',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      'Container 2',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 100,
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    'Container 3',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 15),
                    child: Container(
                      height: 80,
                      width: 80,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Container 4',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 15),
                    child: Container(
                      height: 80,
                      width: 80,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Container 5',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 15),
                    child: Container(
                      height: 80,
                      width: 80,
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          'Container 6',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset('assets/images/image.jpg'))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  style: TextStyle(color: Colors.red),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: Colors.red,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
              ),
              Container(
                child: Icon(
                  Icons.forward,
                  size: 70,
                  color: Colors.red,
                ),
              ),
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
