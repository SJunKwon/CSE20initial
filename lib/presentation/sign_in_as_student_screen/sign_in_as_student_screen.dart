import 'package:flutter/material.dart';
import 'package:facetap/core/app_export.dart';
import 'package:facetap/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:facetap/widgets/app_bar/custom_app_bar.dart';
import 'package:facetap/widgets/custom_checkbox_button.dart';
import 'package:facetap/widgets/custom_elevated_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInAsStudentScreen extends StatefulWidget {
  SignInAsStudentScreen({Key? key}) : super(key: key);

  @override
  _SignInAsStudentScreenState createState() => _SignInAsStudentScreenState();
}

class _SignInAsStudentScreenState extends State<SignInAsStudentScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // Define a global counter variable
  int _globalCounter = 0;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAppBar(context),
                SizedBox(height: 52),
                CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 54,
                  width: 77,
                ),
                SizedBox(height: 7),
                Text(
                  "Students",
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 57),
                _buildEmailFormField(),
                SizedBox(height: 22),
                _buildPasswordFormField(),
                SizedBox(height: 22),
                _buildRememberMe(context),
                SizedBox(height: 25),
                _buildSignInButton(),
                SizedBox(height: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 60,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          onTapArrowLeft(context);
        },
      ),
      title: AppbarSubtitleOne(
        text: "Back",
        margin: EdgeInsets.only(left: 10),
      ),
    );
  }

  Widget _buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: "Enter your email",
        hintStyle: TextStyle(color: Colors.grey),
        prefix: Container(
          margin: EdgeInsets.fromLTRB(12, 2, 10, 2),
          child: CustomImageView(
            imagePath: ImageConstant.img1e,
            height: 14,
            width: 20,
          ),
        ),
        prefixIconConstraints: BoxConstraints(maxHeight: 41),
        contentPadding: EdgeInsets.only(right: 30),
        border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        return null;
      },
    );
  }

  Widget _buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: "Enter your password",
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Container(
          margin: EdgeInsets.fromLTRB(12, 2, 10, 2),
          child: CustomImageView(
            imagePath: ImageConstant.imgPasswordField,
            height: 14,
            width: 20,
          ),
        ),
        prefixIconConstraints: BoxConstraints(maxHeight: 41),
        contentPadding: EdgeInsets.only(right: 30),
        border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
    );
  }

  Widget _buildRememberMe(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CustomCheckboxButton(
        alignment: Alignment.centerLeft,
        text: "Remember me",
        value: rememberMe,
        onChange: (value) {
          setState(() {
            rememberMe = value;
          });
        },
      ),
    );
  }

  Widget _buildSignInButton() {
    return CustomElevatedButton(
      height: 49,
      text: "Log In".toUpperCase(),
      onPressed: () {
        onTapSignIn(context);
      },
    );
  }


  void onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  void onTapSignIn(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        // Sign up with email and password
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );

        // Retrieve the signed-in user
        User? user = userCredential.user;

        if (user != null) {
          // Fetch the current counter value from Firestore
          DocumentSnapshot counterSnapshot =
          await _firestore.collection('stud_counter').doc('studentCounter').get();

          int currentCounter = counterSnapshot.exists ? counterSnapshot['count'] : 0;

          // Generate studId using the current counter
          String studId = 's${currentCounter + 1}';

          // Update the counter in Firestore
          await _firestore.collection('stud_counter').doc('studentCounter').update({
            'count': currentCounter + 1,
          });

          // Create a document in the "students" collection with the user's UID
          await _firestore.collection('students').doc(user.uid).set({
            'studId': studId,
            'name': 'Johnny Test',
            'email': emailController.text,
            // Add other fields as needed
          });

          // Navigate to the home screen on successful sign-up
          Navigator.pushNamed(context, AppRoutes.studentDashboardHomeScreen);
        }
      } catch (e) {
        // Handle sign-up errors
        print('Error: $e');
      }
    }
  }
}
