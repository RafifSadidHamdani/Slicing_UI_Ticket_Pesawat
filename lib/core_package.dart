export 'package:get_it/get_it.dart';
export 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  Future<void> navigateTo(String routeName) async {
    navigatorKey.currentState?.pushNamed(routeName);
  }
}
final GetIt getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<NavigationService>(NavigationService());
}
