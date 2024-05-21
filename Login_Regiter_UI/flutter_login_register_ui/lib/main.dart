import 'package:flutter/material.dart';

import 'package:flutter_login_register_ui/register.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes: {
        '/registerpage': (context) => const Register(),
        '/mainpage': (context) => const LoginPage()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(10, 10, 10, 50),
        title: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
                color: Colors.white,
              ),
              const Text(
                'Login Page',
                style: TextStyle(color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: double.maxFinite,
          // width: double.maxFinite,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login.png'),
                  fit: BoxFit.fill)),
          child: Stack(
            children: [
              Wrap(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.12,
                      left: MediaQuery.of(context).size.width * 0.22,
                    ),
                    child: const Expanded(
                      flex: 10,
                      child: Text(
                        'Welcome \n Back',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                        maxLines: 5,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.45,
                    right: 40,
                    left: 40),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          filled: true,
                          fillColor: const Color.fromRGBO(10, 10, 10, 500),
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red))),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.password),
                          filled: true,
                          fillColor: const Color.fromRGBO(10, 10, 10, 500),
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red))),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Sign in',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.underline),
                        ),
                        CircleAvatar(
                          backgroundColor: const Color.fromRGBO(10, 10, 10, 10),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            onPressed: () {},
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/registerpage');
                            },
                            child: const Text('Sign Up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline))),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
