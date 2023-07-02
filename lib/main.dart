import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simulation_model/Routes/Routes.dart';
import 'package:simulation_model/View/HomeScreen/homeScreen.dart';

import 'Utils/ColorConstants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            // scaffoldBackgroundColor: Colors.black26.withOpacity(0.1),
            textTheme: TextTheme(
              bodyLarge: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                    color: whiteColor),
              ),
            ),
          ),
          debugShowCheckedModeBanner: false,

          getPages: AppRoutes.routes,
          initialRoute: AppRoutes.splashScreen,
        );
      },
    );
  }
}

