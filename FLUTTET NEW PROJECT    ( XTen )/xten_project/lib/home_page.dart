import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 221, 205, 215),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: Colors.purple, size: 28),
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Star',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.window),
            label: 'Square',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Square',
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1.12,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(23)),
                gradient: LinearGradient(colors: [
                  Color(0xFF8F00FF),
                  Color.fromARGB(255, 219, 198, 209),
                ], begin: Alignment.topCenter, end: Alignment.bottomRight),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.09,
                      left: MediaQuery.of(context).size.width * 0.12,
                      right: MediaQuery.of(context).size.width * 0.12,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(
                              Colors.deepPurple,
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.pink.shade100,
                            ),
                          ),
                          child: const Text(
                            'Featured',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(
                              Colors.deepPurple,
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.pink.shade100,
                            ),
                          ),
                          child: const Text(
                            'Drama',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(
                              Colors.deepPurple,
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.pink.shade100,
                            ),
                          ),
                          child: const Text(
                            'Action',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(
                              Colors.deepPurple,
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.pink.shade100,
                            ),
                          ),
                          child: const Text(
                            'Comedy',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: const EdgeInsets.only(left: 15),
                    child: const Text(
                      'Trending',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.34,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/images/thor.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.24,
                          left: MediaQuery.of(context).size.width * 0.55,
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(
                              Colors.purpleAccent.shade100,
                            ),
                            shape: MaterialStateProperty.all(
                              const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                            ),
                            side: MaterialStateProperty.all(
                              BorderSide(
                                color: Colors.pink.shade100,
                                width: 2,
                              ),
                            ),
                            shadowColor: MaterialStateProperty.all(
                              Colors.white54,
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.white.withOpacity(0.4),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Watch Now',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15),
                        child: const Text(
                          'For You',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.34,
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'View More',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_double_arrow_right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      child: Row(
                        children: [
                          forYou(context, 'assets/images/enterthewild.png',
                              'Enter The World'),
                          forYou(context, 'assets/images/avengers.png',
                              'Avengers'),
                          forYou(
                              context, 'assets/images/disney.png', 'Star Wars')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.pink])),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(28)),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 215, 203, 209),
                  Colors.purple.shade200
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      'Popular This Week',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.8),
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 15),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Popular(
                            context, 'assets/images/avengers.png', 'Avengers'),
                        Popular(context, 'assets/images/disney.png', 'Disney'),
                        Popular(context, 'assets/images/enterthewild.png',
                            'Enter The Wild'),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget Popular(BuildContext context, String imagePath, String text) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 163, 85, 222),
            const Color.fromARGB(255, 175, 106, 187)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              imagePath,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 15),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text(
                '4.8',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          SizedBox(height: 10),
          const Center(
            child: Text(
              'Lorem ipsum dolor sit bro amet, consectetur focus elit',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              'Play',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget forYou(BuildContext context, String imagePath, String text) {
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 8, top: 70),
        height: MediaQuery.of(context).size.height * 0.25,
        width: 140,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          gradient: LinearGradient(
            colors: [
              Color(0xFF8F00FF),
              Color.fromARGB(255, 219, 198, 209),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    '4.8',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  'Lorem ipsum dolor sit bro amet,consectetur focus elit',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Play',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 40, left: 45),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          child: Image.asset(
            imagePath,
            height: MediaQuery.of(context).size.height * 0.09,
            width: 65,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}
