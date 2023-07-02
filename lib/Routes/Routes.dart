import 'package:get/get.dart';
import 'package:simulation_model/View/HomeScreen/homeScreen.dart';
import 'package:simulation_model/View/SplashScreen/SplashScreen.dart';

class AppRoutes {

  static String homeScreen = "/homeScreen";
  static String splashScreen = "/splashScreen";


  static List<GetPage<dynamic>> routes = [
    GetPage(
        name: homeScreen,
        page: () => HomeScreen(),
        transition: Transition.fadeIn),
    GetPage(
        name: splashScreen,
        page: () => SplashScreen(),
        transition: Transition.fadeIn),

  ];
}
