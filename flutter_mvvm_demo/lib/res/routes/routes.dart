import 'package:flutter_mvvm_demo/res/routes/routes_name.dart';
import 'package:flutter_mvvm_demo/view/login/login_view.dart';
import 'package:flutter_mvvm_demo/view/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
            name: RoutName.splashScreen,
            page: () => SplashCreen(),
            transitionDuration: Duration(microseconds: 250),
            transition: Transition.leftToRightWithFade),
        GetPage(
            name: RoutName.login_view,
            page: () => LoginView(),
            transitionDuration: Duration(microseconds: 250),
            transition: Transition.leftToRightWithFade)
      ];
}
