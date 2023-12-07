import '../sd_attendance_one_screen/widgets/sdattendanceone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:facetap/core/app_export.dart';
import 'package:facetap/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:facetap/widgets/app_bar/custom_app_bar.dart';
import 'package:facetap/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SdAttendanceOneScreen extends StatelessWidget {
  SdAttendanceOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 20.v),
                child: Column(children: [
                  _buildAttendance(context),
                  SizedBox(height: 20.v),
                  _buildSDAttendanceOne(context)
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "Fac".toUpperCase(),
                      style: theme.textTheme.headlineLarge),
                  TextSpan(
                      text: "E".toUpperCase(),
                      style: theme.textTheme.headlineLarge),
                  TextSpan(
                      text: "TAP".toUpperCase(),
                      style: CustomTextStyles.headlineLargePrimary)
                ]),
                textAlign: TextAlign.left)),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse8,
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildAttendance(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("Attendance", style: CustomTextStyles.titleLargeBold),
          Spacer(),
          Container(
              width: 104.h,
              margin: EdgeInsets.only(top: 3.v, bottom: 2.v),
              padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 5.v),
              decoration: AppDecoration.outlineBlack900011
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child:
                  Text("Class Code", style: CustomTextStyles.bodySmallGray400)),
          CustomImageView(
              imagePath: ImageConstant.imgVectorPrimary15x18,
              height: 15.v,
              width: 18.h,
              margin: EdgeInsets.only(left: 6.h, top: 7.v, bottom: 6.v))
        ]);
  }

  /// Section Widget
  Widget _buildSDAttendanceOne(BuildContext context) {
    return Expanded(
        child: SizedBox(
            height: 113.v,
            child: ListView.separated(
                padding: EdgeInsets.only(right: 2.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 22.h);
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return SdattendanceoneItemWidget(onTapSubject: () {
                    onTapSubject(context);
                  });
                })));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the sdAttendanceScreen when the action is triggered.
  onTapSubject(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sdAttendanceScreen);
  }
}
