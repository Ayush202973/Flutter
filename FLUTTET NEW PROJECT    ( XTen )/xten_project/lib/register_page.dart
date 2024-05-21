import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:xten_project/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  var email = TextEditingController();
  var name = TextEditingController();
  var location = TextEditingController();
  var phone = TextEditingController();

  final emailRegex = RegExp(r'^[\w-]+(.[\w-]+)@[\w-]+(.[\w-]+)(.[a-z]{2,})$');
  bool isObsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Container(
            height: MediaQuery.of(context).size.height * 1.2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF8F00FF), Color(0xFFFFB4DC)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 45, left: 30, right: 30),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/logo.png'),
                      radius: 30,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: IconButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()));
                              });
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ),
                      const Text(
                        'Welcome Back !',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black38.withOpacity(0.2),
                            offset: const Offset(6, 8))
                      ],
                    ),
                    height: MediaQuery.of(context).size.height * 0.65,
                    width: MediaQuery.of(context).size.width * 0.92,
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 24,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            padding: const EdgeInsets.only(right: 25, left: 25),
                            child: TextFormField(
                              controller: name,
                              decoration: InputDecoration(
                                hintText: 'Full Name',
                                prefixIcon: const Icon(Icons.person),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.purple),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Required';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            padding: const EdgeInsets.only(right: 25, left: 25),
                            child: TextFormField(
                              controller: location,
                              validator: (value) {
                                if (location.text.isEmpty) {
                                  return 'Required';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: 'Address',
                                prefixIcon: const Icon(Icons.location_on),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            padding: const EdgeInsets.only(right: 25, left: 25),
                            child: TextFormField(
                              controller: phone,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Required';
                                } else if (value.length != 10) {
                                  return 'Invalid number';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: 'Phone Number',
                                prefixIcon: const Icon(Icons.phone),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            padding: const EdgeInsets.only(right: 25, left: 25),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Required';
                                } else if (!emailRegex.hasMatch(value)) {
                                  return 'Invalid E-mail';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: ' UserName/Email',
                                prefixIcon: const Icon(Icons.email),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            padding: const EdgeInsets.only(right: 25, left: 25),
                            child: TextField(
                              obscureText: isObsecure,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isObsecure = !isObsecure;
                                    });
                                  },
                                  icon: isObsecure
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            padding: const EdgeInsets.only(right: 25, left: 25),
                            child: TextField(
                              obscureText: isObsecure,
                              decoration: InputDecoration(
                                hintText: 'Confirm Password',
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isObsecure = !isObsecure;
                                    });
                                  },
                                  icon: isObsecure
                                      ? const Icon(Icons.visibility_off)
                                      : const Icon(Icons.visibility),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        const BorderSide(color: Colors.purple),
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 27,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.69,
                    height: MediaQuery.of(context).size.height * 0.057,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all<Color>(
                          Colors.white.withOpacity(0.3),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF8F00FF),
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {}
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text:
                              'By creating an account you are agreeing to comply with the ',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                            text: 'terms and conditions',
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white),
                            recognizer: TapGestureRecognizer()..onTap = () {}),
                        const TextSpan(
                          text: ' & ',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: 'privacy policies',
                          style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {},
                    hoverColor: Colors.black,
                    splashColor: Colors.black,
                    radius: 5,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        });
                      },
                      child: Text(
                        'Already a Member?',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  color: Colors.black.withOpacity(0.2),
                                  offset: const Offset(1.5, 1.5))
                            ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
