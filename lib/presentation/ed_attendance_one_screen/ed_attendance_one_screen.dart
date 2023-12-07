import '../ed_attendance_one_screen/widgets/edattendanceone_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:facetap/core/app_export.dart';
import 'package:facetap/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:facetap/widgets/app_bar/custom_app_bar.dart';
import 'package:facetap/widgets/custom_bottom_bar.dart';
import 'package:facetap/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class EdAttendanceOneScreen extends StatelessWidget {
  EdAttendanceOneScreen({Key? key}) : super(key: key);

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
                  _buildAddClass(context),
                  SizedBox(height: 20.v),
                  _buildEDAttendanceOne(context)
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
  Widget _buildAddClass(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Attendance", style: CustomTextStyles.titleLargeBold),
          CustomElevatedButton(
              height: 25.v,
              width: 101.h,
              text: "Add Class",
              margin: EdgeInsets.symmetric(vertical: 2.v),
              rightIcon: Container(
                  margin: EdgeInsets.only(),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgRoundedRectangle1Copy9,
                      height: 25.v,
                      width: 101.h)),
              leftIcon: Container(
                  margin: EdgeInsets.only(right: 7.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVectorOnprimarycontainer,
                      height: 13.adaptSize,
                      width: 13.adaptSize)),
              buttonStyle: CustomButtonStyles.outlinePrimary3,
              buttonTextStyle: CustomTextStyles.labelMediumMedium,
              onPressed: () {
                onTapAddClass(context);
              })
        ]));
  }

  /// Section Widget
  Widget _buildEDAttendanceOne(BuildContext context) {
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
                  return EdattendanceoneItemWidget(onTapSubject: () {
                    onTapSubject(context);
                  });
                })));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the edAttendanceScreen when the action is triggered.
  onTapSubject(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.edAttendanceScreen);
  }

  /// Navigates to the edAddDeleteScreen when the action is triggered.
  onTapAddClass(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.edAddDeleteScreen);
  }
}
