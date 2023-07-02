import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:simulation_model/Utils/ColorConstants.dart';
import 'package:simulation_model/View/GG1/GG1.dart';
import 'package:simulation_model/View/MG1/MG1.dart';
import 'package:simulation_model/View/MM1/MM1.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../../Controllers/HomeScreenController.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              // leading: Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Lottie.asset("assets/images/lf20_4tyanb7k.json",height: 100,width: 100),
              // ),
              // actions: [Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Lottie.asset("assets/images/lf20_4tyanb7k.json",height: 100,width: 40.w),
              // ),],
              centerTitle: true,
              backgroundColor: Colors.black,
              // pinned: true,
              expandedHeight: 110,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                  padding: const EdgeInsets.only(
                      bottom: 20.0, top: 20, left: 20, right: 20),
                  child: Center(
                    child: Text(
                      "SIMMULATOR",
                      style: Theme.of(context).textTheme.bodyLarge?.merge(
                          TextStyle(
                              fontSize: 22.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  // child: Image.asset(
                  //   "assets/images/LEIS Logo Landscape 03.png",
                  //   height: 100,
                  //   width: 200,
                  // ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) {
                return GetBuilder(
                    init: homeScreenController,
                    builder: (_) {
                      return Container(
                        height: 1.7.sh ,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TabBar(indicatorPadding: EdgeInsets.symmetric(horizontal: 30.w),
                                indicatorColor: Colors.deepPurple,
                                unselectedLabelColor: Colors.blue,
                                labelColor: Colors.red,
                                tabs: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      // height: 40.h,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25.r),
                                        color: Colors.deepPurple.withOpacity(0.2),
                                      ),
                                      child: Tab(
                                        icon: Text(
                                          "MM1",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.merge(TextStyle(
                                                  fontSize: 14.sp,
                                                  // color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 40.h,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25.r),
                                        color: Colors.deepPurple.withOpacity(0.2),
                                      ),
                                      child: Tab(
                                        icon: Text(
                                          "MG1",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.merge(TextStyle(
                                                  fontSize: 14.sp,
                                                  // color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 40.h,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25.r),
                                        color: Colors.deepPurple.withOpacity(0.2),
                                      ),
                                      child: Tab(
                                        icon: Text(
                                          "GG1",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge
                                              ?.merge(TextStyle(
                                                  fontSize: 14.sp,
                                                  // color: Colors.white,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                                controller: homeScreenController.tabController,
                                indicatorSize: TabBarIndicatorSize.tab,
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  MM1(),
                                  MG1(),
                                  GG1(),
                                ],
                                controller: homeScreenController.tabController,
                              ),
                            ),
                          ],
                        ),
                      );
                    });
              },
            ))
          ],
        ),
      ),
    );
  }
}
