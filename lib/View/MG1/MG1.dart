import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:simulation_model/Controllers/HomeScreenController.dart';
import 'package:simulation_model/Utils/ColorConstants.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MG1 extends StatelessWidget {
   MG1({Key? key}) : super(key: key);
  HomeScreenController homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        // height: 1000.h,
        width: 0.9.sw,
        color: Colors.deepPurple.withOpacity(0.1),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 0.1.sw, vertical: 20.h),
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.start,
                children: [
                  Text(
                    "Average Interarrival Time",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.merge(TextStyle(
                        fontSize: 12.sp)),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 250.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: whiteColor
                        .withOpacity(0.2),
                    borderRadius:
                    BorderRadius.circular(
                        5.r)),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.white),
                  cursorColor: Colors.white54,
                  controller: homeScreenController
                      .MG1averageInterarrivaltimeController,
                  keyboardType:
                  TextInputType.number,
                  textInputAction:
                  TextInputAction.next,
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(
                        horizontal: 20.w),
                    hintText:
                    "Avg Interarrival Time*",
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.merge(
                      TextStyle(
                        color: blackColor,
                        fontSize: 12.sp,
                      ),
                    ),
                    focusedBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                        color: whiteColor,
                      ),
                    ),
                    enabledBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                          color: whiteColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.start,
                children: [
                  Text(
                    "Average max Service Time",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.merge(TextStyle(
                        fontSize: 12.sp)),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 250.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: whiteColor
                        .withOpacity(0.2),
                    borderRadius:
                    BorderRadius.circular(
                        5.r)),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.white),
                  cursorColor: Colors.white54,
                  keyboardType:
                  TextInputType.number,
                  controller: homeScreenController
                      .maxaverageServiceTimeController,
                  textInputAction:
                  TextInputAction.done,
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(
                        horizontal: 20.w),
                    hintText: "Avg max Service Time*",
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.merge(
                      TextStyle(
                        color: blackColor,
                        fontSize: 12.sp,
                      ),
                    ),
                    focusedBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                        color: whiteColor,
                      ),
                    ),
                    enabledBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                          color: whiteColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.start,
                children: [
                  Text(
                    "Average min Service Time",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.merge(TextStyle(
                        fontSize: 12.sp)),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 250.w,
                height: 40.h,
                decoration: BoxDecoration(
                    color: whiteColor
                        .withOpacity(0.2),
                    borderRadius:
                    BorderRadius.circular(
                        5.r)),
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.white),
                  cursorColor: Colors.white54,
                  keyboardType:
                  TextInputType.number,
                  controller: homeScreenController
                      .minaverageServiceTimeController,
                  textInputAction:
                  TextInputAction.done,
                  decoration: InputDecoration(
                    contentPadding:
                    EdgeInsets.symmetric(
                        horizontal: 20.w),
                    hintText: "Avg min Service Time*",
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.merge(
                      TextStyle(
                        color: blackColor,
                        fontSize: 12.sp,
                      ),
                    ),
                    focusedBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                        color: whiteColor,
                      ),
                    ),
                    enabledBorder:
                    OutlineInputBorder(
                      borderSide: BorderSide(
                          color: whiteColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              GestureDetector(
                onTap: () {
                  homeScreenController.mg1List.clear();
                  homeScreenController. update();
                  homeScreenController.MG1(
                      averageInterarrivalTime: int
                          .parse(homeScreenController
                          .MG1averageInterarrivaltimeController
                          .text),
                      maxaverageServiceTime: int.parse(
                          homeScreenController
                              .maxaverageServiceTimeController
                              .text),minaverageServiceTime:  int.parse(homeScreenController
                      .minaverageServiceTimeController
                      .text ),flag: "2");
                  homeScreenController.update();
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 250.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius:
                      BorderRadius.circular(
                          5.r)),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Text(
                        "Calculate",
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.merge(TextStyle(
                            fontSize: 16.sp,
                            color:
                            whiteColor)),
                      ),
                      // SizedBox(
                      //   height: 18.h,
                      //   width: 18.h,
                      //   child: CircularProgressIndicator(
                      //     strokeWidth: 3,
                      //     color: Colors.white,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              homeScreenController.mg1List.length==0?Text(""):
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: homeScreenController.mg1List.length,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 140.h,
                    crossAxisCount: 2),
                itemBuilder:
                    (BuildContext context, int index) {
                  return Container(
                      height: 200,
                      child: SfRadialGauge(
                          enableLoadingAnimation: true, animationDuration: 4500,
                          backgroundColor: Colors.white.withOpacity(0.2),

                          axes: <RadialAxis>[
                            RadialAxis(minimum: 0, maximum: 100,
                                ranges: <GaugeRange>[
                                  GaugeRange(startValue: 0, endValue: 10, color:Colors.green,),
                                  GaugeRange(startValue: 10,endValue: 30,color: Colors.orange),
                                  GaugeRange(startValue: 30,endValue: 100,color: Colors.red)],
                                pointers: <GaugePointer>[
                                  NeedlePointer(value: homeScreenController.mg1List[index],needleColor: Colors.white,   lengthUnit: GaugeSizeUnit.factor,
                                      needleLength: 0.6,
                                      needleStartWidth: 1, needleEndWidth: 3)],
                                annotations: <GaugeAnnotation>[
                                  GaugeAnnotation(
                                      widget:
                                      Container(child:
                                      Text(homeScreenController.mg1List[index].toStringAsFixed(3),
                                          style: TextStyle(fontSize: 11.sp,fontWeight: FontWeight.bold,color: Colors.white))),
                                      angle: 90, positionFactor: 0.8
                                  )]
                            )])
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
