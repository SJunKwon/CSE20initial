import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:facetap/core/app_export.dart';

class ChooseARoleScreen extends StatelessWidget {
  const ChooseARoleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Choose Your Role",
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 52.v),
                      Container(
                          margin: EdgeInsets.only(left: 2.h, right: 3.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 69.h, vertical: 39.v),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: fs.Svg(ImageConstant.imgGroup77),
                                  fit: BoxFit.cover)),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: 54.v,
                                    width: 77.h),
                                SizedBox(height: 7.v),
                                Text("Students",
                                    style: theme.textTheme.titleSmall)
                              ])),
                      SizedBox(height: 57.v),
                      GestureDetector(
                          onTap: () {
                            onTapTwelve(context);
                          },
                          child: Container(
                              margin: EdgeInsets.only(left: 2.h, right: 3.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 70.h, vertical: 34.v),
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: fs.Svg(ImageConstant.imgGroup77),
                                      fit: BoxFit.cover)),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 14.v),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorPrimary,
                                        height: 54.v,
                                        width: 67.h),
                                    SizedBox(height: 6.v),
                                    Text("Educators",
                                        style: theme.textTheme.titleSmall)
                                  ]))),
                      SizedBox(height: 3.v)
                    ]))));
  }

  /// Navigates to the signInAsStudentScreen when the action is triggered.
  onTapTwelve(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInAsStudentScreen);
  }
}
