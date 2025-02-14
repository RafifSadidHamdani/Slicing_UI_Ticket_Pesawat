import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';
import 'package:food_delivery/presentation/ui/app_list/view/app_list_view.dart';
import 'package:food_delivery/presentation/ui/travel/tv_dashboard/view/tv_dashboard_view.dart';
import 'package:food_delivery/shared/util/theme/theme.dart';
import 'package:food_delivery/shared/util/theme/theme_dark.dart';

void main() async {
  await initialize();

  Get.mainTheme.value = getDarkTheme();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Get.mainTheme,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Capek Ngoding',
          navigatorKey: Get.navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: value,
          home: const AppListView(),
        );
      },
    );
  }
}
