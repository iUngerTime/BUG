import 'package:BUG/theme/theme_service.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.themeService}) : super(key: key);

  static const routeName = '/';

  final ThemeService themeService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.homeTabTitle),
        actions: [
          IconButton(
              onPressed: () {
                themeService.isDark
                    ? themeService.updateThemeMode(ThemeMode.light)
                    : themeService.updateThemeMode(ThemeMode.dark);
              },
              icon: Icon(themeService.isDark
                  ? Icons.nightlight_round
                  : Icons.wb_sunny)),
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
              title: Text(AppLocalizations.of(context)!.homeTabTitle),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_page_rounded),
              title: Text(AppLocalizations.of(context)!.resumeTabTitle),
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
