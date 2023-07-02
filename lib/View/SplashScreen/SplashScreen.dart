import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:simulation_model/Controllers/SplashController.dart';
import 'package:simulation_model/Utils/ColorConstants.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
  SplashController splashController=Get.put(SplashController());
  @override

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
         color: Colors.black          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 0.2.h,
                ),
                Text(
                  "OPERATIONAL RESEARCH",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.merge(TextStyle(
                      fontSize: 24.sp,
                      // color: Colors.white,
                      fontWeight: FontWeight.bold)),
                ),
                Container(
                    height: 0.55.sh,
                    width: 0.55.sw,
                    child: Lottie.asset("assets/images/dlf10_WUQEmDIaSz.json")
                ),
                Text(
                  "DR. Shaista Raess",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.merge(TextStyle(
                      fontSize: 20.sp,
                      // color: Colors.white,
                      fontWeight: FontWeight.bold)),
                ),
                Icon(Icons.account_balance,color: Colors.white,size: 20.h,)
                // Container(
                //   height: 0.13.sh,
                //   width: 0.13.sw,
                //   child: SpinKitFoldingCube(
                //     color: Colors.white.withOpacity(0.2),
                //     duration: Duration(seconds: 5),
                //   ),
                // )

              ],
            ),
          ),
        )

    );
  }
}
