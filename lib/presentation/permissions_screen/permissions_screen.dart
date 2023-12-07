import 'package:flutter/material.dart';
import '../permissions_screen/widgets/permissions_item_widget.dart';
import 'package:facetap/core/app_export.dart';
import 'package:facetap/widgets/app_bar/appbar_leading_image.dart';
import 'package:facetap/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:facetap/widgets/app_bar/custom_app_bar.dart';
import 'package:facetap/widgets/custom_checkbox_button.dart';
import 'package:facetap/widgets/custom_elevated_button.dart';

class PermissionsScreen extends StatefulWidget {
  PermissionsScreen({Key? key}) : super(key: key);

  @override
  _PermissionsScreenState createState() => _PermissionsScreenState();
}

class _PermissionsScreenState extends State<PermissionsScreen> {
  bool readPolicyChecked = false;
  bool cameraPermissionChecked = false;
  bool locationPermissionChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Permissions", style: theme.textTheme.headlineSmall),
              SizedBox(height: 14),
              _buildDescription(),
              SizedBox(height: 5),
              _buildPermissions(),
              SizedBox(height: 62),
              _buildCombinedShape(),
              SizedBox(height: 24),
              _buildAllowButton(),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 24, top: 18, bottom: 18),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      title: AppbarSubtitleOne(
        text: "Back",
        margin: EdgeInsets.only(left: 10),
      ),
    );
  }

  Widget _buildDescription() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 8),
      child: Text(
        "Please allow us permission to access the following for fast and wide facial detection.",
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        style: CustomTextStyles.bodyMediumThin.copyWith(height: 1.20),
      ),
    );
  }

  Widget _buildPermissions() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 12);
          },
          itemCount: 2,
          itemBuilder: (context, index) {
            return PermissionsItemWidget();
          },
        ),
      ),
    );
  }

  Widget _buildCombinedShape() {
    return Padding(
      padding: EdgeInsets.only(left: 1, right: 19),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
        children: [
          CustomCheckboxButton(
            text: "I read the Privacy policy and I accept the terms and conditions.",
            isExpandedText: true,
            value: readPolicyChecked,
            onChange: (value) {
              setState(() {
                readPolicyChecked = value;
              });
            },
          ),
          SizedBox(height: 10),
          CustomCheckboxButton(
            text: "Allow access to Camera",
            value: cameraPermissionChecked,
            onChange: (value) {
              setState(() {
                cameraPermissionChecked = value;
              });
            },
          ),
          SizedBox(height: 10),
          CustomCheckboxButton(
            text: "Allow access to Location",
            value: locationPermissionChecked,
            onChange: (value) {
              setState(() {
                locationPermissionChecked = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAllowButton() {
    return CustomElevatedButton(
      height: 43,
      text: "Allow".toUpperCase(),
      margin: EdgeInsets.symmetric(horizontal: 8),
      onPressed: (readPolicyChecked && cameraPermissionChecked && locationPermissionChecked)
          ? () => onTapAllow(context)
          : null,
      alignment: Alignment.center,
    );
  }

  void onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  void onTapAllow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chooseARoleScreen);
  }
}
