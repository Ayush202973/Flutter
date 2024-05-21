// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TodoScreen(),
    );
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TextEditingController _textController = TextEditingController();
  List<String> todos = [];
  List<bool> isChecked = [];

  void addText() {
    setState(() {
      todos.add(_textController.text);
      isChecked.add(false);
      _textController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  hintText: 'Enter a Task',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.black, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: addText,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Add'),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.06,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(10, 10, 10, 0.1),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Stack(
                              children: [
                                Checkbox(
                                    value: isChecked[index],
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked[index] = value!;
                                      });
                                    }),
                                Center(
                                  child: Text(
                                    todos[index],
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: IconButton(
                                    padding: const EdgeInsets.only(bottom: 70),
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {
                                      setState(() {
                                        todos.removeAt(index);
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: todos.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
