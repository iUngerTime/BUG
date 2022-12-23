import 'package:BUG/core/theme/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BUG'),
        actions: [
          IconButton(
              onPressed: () {
                Get.changeTheme(Get.isDarkMode
                    ? ThemeData(
                        useMaterial3: true,
                        colorScheme: lightColorScheme,
                      )
                    : ThemeData(
                        useMaterial3: true,
                        colorScheme: darkColorScheme,
                      ));
              },
              icon: Icon(
                  Get.isDarkMode ? Icons.nightlight_round : Icons.wb_sunny)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset('assets/images/flutter_logo.png'),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_page_rounded),
              title: const Text('Resume'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const AboutListTile(
              // <-- SEE HERE
              icon: Icon(Icons.info),
              applicationIcon: Icon(Icons.local_play),
              applicationName: 'BUG - Brenton Unger II',
              applicationVersion: '1.1',
              applicationLegalese: '© 2022 BUG Software',
              child: Text('About app'),
            ),
          ],
        ),
      ),
    );
  }
}
