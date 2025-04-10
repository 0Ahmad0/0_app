import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widgets/app_button_widget.dart';
import '../../widgets/app_padding_widget.dart';

import '../../../core/strings.dart';
import '../../widgets/logo_widget.dart';
import '../controller/auth_controller.dart';

class SuccessfulChangedPasswordScreen extends StatelessWidget {
  const SuccessfulChangedPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LogoWidget(
          width: 130.sp,
          height: 130.sp,
        ),
      ),
      body: AppPaddingWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Strings.successfulChangePasswordText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              Strings.successfulChangedYourPasswordText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 34.h,
            ),
            AppAuthButtonWidget(
              text: Strings.reToLoginText,
              onPressed: () {
                Get.lazyPut(() => AuthController());
                AuthController.instance.signOut(context);
                // Navigator.pushAndRemoveUntil(
                //     context,
                //     MaterialPageRoute(builder: (_) => LoginScreen()),
                //     (_) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
