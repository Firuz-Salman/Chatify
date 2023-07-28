import 'package:flutter/cupertino.dart';
import 'package:untitled1/navigation/app_routes.dart';
import 'package:untitled1/pages/general_page/view/general_page.dart';
import 'package:untitled1/pages/login_page/view/login_page.dart';

final appRoutes = {
  AppRoutes.loginPage: (BuildContext context) => const LoginPage(),
  AppRoutes.generalRoom: (BuildContext context) => const GeneralPage(),
};
