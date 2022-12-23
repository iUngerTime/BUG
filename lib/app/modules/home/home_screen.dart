import 'package:bug/core/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Instaniate the theme service
    final ThemeService themeService = Get.put(ThemeService());

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
              themeService.updateThemeMode(
                  Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
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
