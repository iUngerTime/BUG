import 'package:bug/app/modules/dashboard/dashboard_bindings.dart';
import 'package:bug/app/modules/dashboard/dashboard_page.dart';
import 'package:bug/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.dashboard,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
  ];
}
