import 'package:bug/app/modules/dashboard/dashboard_controller.dart';
import 'package:bug/app/modules/dashboard/skills/skills_screen.dart';
import 'package:bug/app/modules/dashboard/home/home_screen.dart';
import 'package:bug/app/modules/dashboard/projects/projects_screen.dart';
import 'package:bug/app/modules/dashboard/work/work_screen.dart';
import 'package:bug/core/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key}) : super(key: key);

  final themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(
                  Get.isDarkMode ? Icons.nightlight_round : Icons.wb_sunny),
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
                      child: Image.asset('assets/images/LogoWithGradient.png'),
                    ),
                    ListTile(
                      leading: const Icon(Icons.phone),
                      title: const Text('Contact'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.download),
                      title: const Text('Download Resume'),
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
        body: IndexedStack(
          index: controller.tabIndex,
          children: const [
            HomeScreen(),
            WorkScreen(),
            ProjectsScreen(),
            SkillsScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business_center_rounded),
              label: "Work",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_rounded),
              label: "Projects",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school_rounded),
              label: "Skills",
            ),
          ],
        ),
      );
    });
  }
}
