import 'package:bug/core/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BUG',
          style: Theme.of(context).textTheme.headline4,
        ),
        actions: [
          IconButton(
            icon:
                Icon(Get.isDarkMode ? Icons.nightlight_round : Icons.wb_sunny),
            onPressed: () {
              Get.isDarkMode
                  ? themeController.loadLightTheme()
                  : themeController.loadDarkTheme();
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
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
                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: const Text('Contact'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            const AboutListTile(
              // <-- SEE HERE
              icon: Icon(Icons.info),
              applicationIcon: Icon(Icons.local_play),
              applicationName: 'BUG',
              applicationVersion: '1.1',
              applicationLegalese: '© 2022 BUG Software',
              child: Text('About app'),
            ),
          ],
        ),
      ),
      body: Center(child: Text('Hello')),
    );
  }
}
