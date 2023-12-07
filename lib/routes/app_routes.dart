import 'package:flutter/material.dart';
import 'package:marcgoz_s_application5/presentation/sd_attendance_screen/sd_attendance_screen.dart';
import 'package:marcgoz_s_application5/presentation/student_dashboard_clock_in_screen/student_dashboard_clock_in_screen.dart';
import 'package:marcgoz_s_application5/presentation/permissions_screen/permissions_screen.dart';
import 'package:marcgoz_s_application5/presentation/choose_a_role_screen/choose_a_role_screen.dart';
import 'package:marcgoz_s_application5/presentation/sign_in_as_student_screen/sign_in_as_student_screen.dart';
import 'package:marcgoz_s_application5/presentation/sd_home_facial_recognition_screen/sd_home_facial_recognition_screen.dart';
import 'package:marcgoz_s_application5/presentation/splash_screen/splash_screen.dart';
import 'package:marcgoz_s_application5/presentation/student_dashboard_home_screen/student_dashboard_home_screen.dart';
import 'package:marcgoz_s_application5/presentation/sd_attendance_one_screen/sd_attendance_one_screen.dart';
import 'package:marcgoz_s_application5/presentation/sd_notification_screen/sd_notification_screen.dart';
import 'package:marcgoz_s_application5/presentation/sd_settings_screen/sd_settings_screen.dart';
import 'package:marcgoz_s_application5/presentation/sd_notification_one_screen/sd_notification_one_screen.dart';
import 'package:marcgoz_s_application5/presentation/sign_in_as_educator_screen/sign_in_as_educator_screen.dart';
import 'package:marcgoz_s_application5/presentation/teacher_dashboard_home_screen/teacher_dashboard_home_screen.dart';
import 'package:marcgoz_s_application5/presentation/ed_settings_screen/ed_settings_screen.dart';
import 'package:marcgoz_s_application5/presentation/ed_attendance_one_screen/ed_attendance_one_screen.dart';
import 'package:marcgoz_s_application5/presentation/ed_add_delete_screen/ed_add_delete_screen.dart';
import 'package:marcgoz_s_application5/presentation/ed_attendance_screen/ed_attendance_screen.dart';
import 'package:marcgoz_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String sdAttendanceScreen = '/sd_attendance_screen';

  static const String studentDashboardClockInScreen =
      '/student_dashboard_clock_in_screen';

  static const String permissionsScreen = '/permissions_screen';

  static const String chooseARoleScreen = '/choose_a_role_screen';

  static const String signInAsStudentScreen = '/sign_in_as_student_screen';

  static const String sdHomeFacialRecognitionScreen =
      '/sd_home_facial_recognition_screen';

  static const String splashScreen = '/splash_screen';

  static const String studentDashboardHomeScreen =
      '/student_dashboard_home_screen';

  static const String sdAttendanceOneScreen = '/sd_attendance_one_screen';

  static const String sdNotificationScreen = '/sd_notification_screen';

  static const String sdSettingsScreen = '/sd_settings_screen';

  static const String sdNotificationOneScreen = '/sd_notification_one_screen';

  static const String signInAsEducatorScreen = '/sign_in_as_educator_screen';

  static const String teacherDashboardHomeScreen =
      '/teacher_dashboard_home_screen';

  static const String edSettingsScreen = '/ed_settings_screen';

  static const String edAttendanceOneScreen = '/ed_attendance_one_screen';

  static const String edAddDeleteScreen = '/ed_add_delete_screen';

  static const String edAttendanceScreen = '/ed_attendance_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    sdAttendanceScreen: (context) => SdAttendanceScreen(),
    studentDashboardClockInScreen: (context) => StudentDashboardClockInScreen(),
    permissionsScreen: (context) => PermissionsScreen(),
    chooseARoleScreen: (context) => ChooseARoleScreen(),
    signInAsStudentScreen: (context) => SignInAsStudentScreen(),
    sdHomeFacialRecognitionScreen: (context) => SdHomeFacialRecognitionScreen(),
    splashScreen: (context) => SplashScreen(),
    studentDashboardHomeScreen: (context) => StudentDashboardHomeScreen(),
    sdAttendanceOneScreen: (context) => SdAttendanceOneScreen(),
    sdNotificationScreen: (context) => SdNotificationScreen(),
    sdSettingsScreen: (context) => SdSettingsScreen(),
    sdNotificationOneScreen: (context) => SdNotificationOneScreen(),
    signInAsEducatorScreen: (context) => SignInAsEducatorScreen(),
    teacherDashboardHomeScreen: (context) => TeacherDashboardHomeScreen(),
    edSettingsScreen: (context) => EdSettingsScreen(),
    edAttendanceOneScreen: (context) => EdAttendanceOneScreen(),
    edAddDeleteScreen: (context) => EdAddDeleteScreen(),
    edAttendanceScreen: (context) => EdAttendanceScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
