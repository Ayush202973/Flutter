import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Ayush Poudel'),
            accountEmail: Text('ap2029@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/banner.jpg'),
            ),
          ),
          Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(8),
                leading: Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const Icon(Icons.home)),
                title: const Text('Home'),
                onTap: () {},
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(8),
                leading: Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const Icon(Icons.favorite_outline_outlined)),
                title: const Text('Favourite'),
                onTap: () {},
              ),
              ListTile(
                contentPadding: const EdgeInsets.all(8),
                leading: Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const Icon(Icons.settings)),
                title: const Text('Setting'),
                onTap: () {},
              ),
              /*    amith poudel class 6 moon e e knoe that i now erunghdhhfhdvjibjhjdhfbfh*/
              ListTile(
                contentPadding: const EdgeInsets.all(8),
                leading: Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const Icon(Icons.exit_to_app)),
                title: const Text('Exit'),
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
