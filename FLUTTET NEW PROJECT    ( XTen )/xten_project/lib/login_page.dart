import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:xten_project/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: Container(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            height: MediaQuery.of(context).size.height * 1.09,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF8F00FF), Color(0xFFFFB4DC)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.08),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/logo.png'),
                          ),
                          SizedBox(width: 10),
                        ],
                      ),
                      Text(
                        ' Hello, \n Welcome !',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: MediaQuery.of(context).size.height * 0.41,
                  width: MediaQuery.of(context).size.width * 0.93,
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.08,
                      vertical: 20),
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
                        offset: const Offset(6, 8),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 28,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          hintText: 'Username/Email',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: const BorderSide(
                                color: Colors.purple, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide:
                                const BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        obscureText: isObsecure,
                        decoration: InputDecoration(
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
                          hintText: 'Password',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide: const BorderSide(
                                color: Colors.purple, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                            borderSide:
                                const BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                activeColor: Colors.blue,
                                value: isChecked,
                                onChanged: (value) {
                                  setState(() {
                                    isChecked = value ?? false;
                                  });
                                },
                              ),
                              const Text(
                                'Remember me',
                                style: TextStyle(fontSize: 13),
                              ),
                            ],
                          ),
                          const Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all<Color>(
                        Colors.white.withOpacity(0.3),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF8F00FF),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  children: [
                    Text(
                      'Or Sign in with',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.3),
                            offset: const Offset(1, 2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const FaIcon(
                            FontAwesomeIcons.facebook,
                            size: 18,
                            color: Colors.blueAccent,
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {},
                          child: FaIcon(
                            FontAwesomeIcons.squareTwitter,
                            size: 18,
                            color: Colors.blue.shade500,
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {},
                          child: const FaIcon(
                            FontAwesomeIcons.squareInstagram,
                            size: 18,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'New User?    ',
                          style: TextStyle(
                              color: Colors.black,
                              shadows: [
                                Shadow(
                                  color: Colors.white.withOpacity(0.3),
                                  offset: const Offset(1.5, 1.5),
                                ),
                              ],
                              fontSize: 17),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage()));
                            });
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              shadows: [
                                Shadow(
                                  color: Colors.white.withOpacity(0.3),
                                  offset: const Offset(1, 1),
                                ),
                              ],
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
