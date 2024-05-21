// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:first_app/drawer.dart';

void main() {
  runApp(const ToDoList());
}

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  // This widget is the root of your application.
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
  final TextEditingController _text_controller = TextEditingController();
  List<String> todos = [];
  List<bool> isChecked = [];
  void AddTask() {
    String task = _text_controller.text;
    setState(() {
      if (task.isNotEmpty) {
        todos.add(task);
        isChecked.add(false);
        _text_controller.clear();
      } else {}
    });

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      backgroundColor: Colors.blue,
      content: Text(
        'Task Added',
      ),
      duration: Duration(seconds: 1),
    ));
  }

  void DeleteTask(int index) {
    setState(() {
      todos.removeAt(index);
      isChecked.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.blue,
        content: Text(
          'Task Deleted',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        duration: Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(10, 10, 10, 0.08),
        title: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.001, left: 25),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  'To Do List App',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/done.png'),
                radius: 23,
              ),
            ],
          ),
        ),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color.fromRGBO(10, 10, 10, 0.11),
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  controller: _text_controller,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                  decoration: const InputDecoration(
                    hintText: 'Enter a Task',
                    // hintStyle: TextStyle(color: Colors.black),
                    filled: false,
                    fillColor: Color.fromRGBO(252, 252, 252, 0.784),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.white, backgroundColor: Colors.blue),
                  onPressed: () {
                    AddTask();
                  },
                  child: const Text(
                    'Add Task',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  )),
              const SizedBox(
                height: 12,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      return Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.08,
                              width: MediaQuery.of(context).size.width * 0.8,
                              decoration: BoxDecoration(
                                  color: isChecked[index]
                                      ? const Color.fromARGB(80, 130, 169, 195)
                                      : const Color.fromRGBO(10, 10, 10, 0.08),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Stack(
                                children: [
                                  Container(
                                      child: Row(
                                    children: [
                                      Checkbox(
                                          checkColor: Colors.white,
                                          value: isChecked[index],
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked[index] = value!;
                                            });
                                          }),
                                      Expanded(
                                        child: ListTile(
                                          onTap: () {
                                            setState(() {
                                              isChecked[index] =
                                                  !isChecked[index];
                                            });
                                          },
                                          title: Center(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 15),
                                              child: SingleChildScrollView(
                                                child: Text(
                                                  todos[index],
                                                  style: TextStyle(
                                                      decoration:
                                                          isChecked[index]
                                                              ? TextDecoration
                                                                  .lineThrough
                                                              : null,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            DeleteTask(index);
                                          },
                                          icon: const Icon(Icons.delete))
                                    ],
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          )),
    );
  }
}
