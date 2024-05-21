import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/register.png'),
                fit: BoxFit.fill),
          ),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.1, left: 40),
                child: const Text(
                  'Create\n   Account',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 35),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    left: 30,
                    right: 30),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.man),
                          hintText: 'Name',
                          hintStyle: const TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2))),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          hintText: 'Email',
                          hintStyle: const TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(20))),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password),
                        hintText: 'Password',
                        hintStyle: const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: Colors.white,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    decoration: TextDecoration.underline),
                              )),
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward),
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/mainpage');
                            },
                            child: const Text('Back',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    decoration: TextDecoration.underline,
                                    decorationStyle:
                                        TextDecorationStyle.solid)))
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
