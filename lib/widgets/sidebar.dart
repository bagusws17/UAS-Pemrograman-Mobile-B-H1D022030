import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_mobile_h1d022030/controllers/auth_controller.dart';

class Sidebar extends StatelessWidget {
  final String currentRoute;

  const Sidebar({super.key, required this.currentRoute});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue, // Change this to your desired color
            ),
            child: const Text(
              'Cashier System',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard),
            title: const Text('Dashboard'),
            selected: currentRoute == '/dashboard',
            onTap: () => Get.offAllNamed('/dashboard'),
          ),
          ListTile(
            leading: const Icon(Icons.point_of_sale),
            title: const Text('Cashier'),
            selected: currentRoute == '/cashier',
            onTap: () => Get.toNamed('/cashier'),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () => Get.find<AuthController>().logout(),
          ),
        ],
      ),
    );
  }
}
