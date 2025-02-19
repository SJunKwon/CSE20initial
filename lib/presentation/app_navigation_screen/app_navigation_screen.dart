import 'package:flutter/material.dart';
import 'package:facetap/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "SD - Attendance",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sdAttendanceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Student Dashboard - Clock In",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.studentDashboardClockInScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Permissions",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.permissionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Choose a Role",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chooseARoleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign in as Student",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInAsStudentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SD - Home (Facial Recognition)",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sdHomeFacialRecognitionScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Student Dashboard - Home",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.studentDashboardHomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SD - Attendance One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sdAttendanceOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SD - Notification",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sdNotificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SD - Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sdSettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SD - Notification One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.sdNotificationOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign in as Educator",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInAsEducatorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Teacher Dashboard - Home",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.teacherDashboardHomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ED - Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.edSettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ED - Attendance One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.edAttendanceOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ED - Add/Delete",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.edAddDeleteScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ED - Attendance",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.edAttendanceScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
