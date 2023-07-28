import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled1/navigation/app_routes.dart';
import 'package:untitled1/navigation/routes_map.dart';
import 'package:untitled1/pages/login_page/view/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
          initialRoute: AppRoutes.loginPage,
          onGenerateRoute: (routeSettings) {
            if (appRoutes[routeSettings.name] != null) {
              return MaterialPageRoute(
                builder: (context) => appRoutes[routeSettings.name]!(context),
                settings: routeSettings,
              );
            }
            return null;
          },
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const LoginPage());
    });
  }
}
