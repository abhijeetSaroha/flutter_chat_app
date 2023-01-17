import 'package:flutter/material.dart';
import 'package:flutter_chat_app/common/values/colors.dart';
import 'package:flutter_chat_app/common/values/values.dart';
import 'package:flutter_chat_app/common/widgets/button.dart';
import 'package:flutter_chat_app/screens/sign_in/index.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({Key? key}) : super(key: key);

  Widget _buildLodo() {
    return Container(
      width: 110.w,
      margin: EdgeInsets.only(top: 84.h),
      child: Column(
        children: [
          Container(
            width: 67.w,
            height: 76.w,
            margin: EdgeInsets.symmetric(horizontal: 15.w),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 76.w,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryBackground,
                      boxShadow: [
                        Shadows.primaryShadow,
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(35),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Image.asset(
                    "assets/images/ic_launcher.png",
                    width: 76.w,
                    height: 76.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 15.h,
              bottom: 15.h,
            ),
            child: Text(
              "Let\'s Chat",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.thirdElement,
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
                height: 1,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildThirdPartyLogin() {
    return Container(
      width: 295.w,
      margin: EdgeInsets.only(
        bottom: 280.h,
      ),
      child: Column(
        children: [
          Text(
            "SignIn with social Networks",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.h, left: 50.w, right: 50.w),
            child: btnFlatButtonWidget(
                onPressed: () {
                  controller.handleSignIn();
                },
                width: 200.w,
                height: 55.h,
                title: "Google LogIn"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            _buildLodo(),
            const Spacer(),
            _buildThirdPartyLogin(),
          ],
        ),
      ),
    );
  }
}
