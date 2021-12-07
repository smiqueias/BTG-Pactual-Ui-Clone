import 'package:btgpactual_ui_clone/src/core/app_colors.dart';
import 'package:btgpactual_ui_clone/src/core/app_images.dart';
import 'package:btgpactual_ui_clone/src/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: Image.asset(
                  AppImages.btgPactualLogo,
                  height: 130,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 12.h),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: 155.w,
                        vertical: 12.h,
                      ),
                    ),
                    child: Text(
                      "Entrar",
                      style: AppTextStyles.robotoRegular14Bold.apply(color: AppColors.white),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.white,
                      side: BorderSide(width: 2.0, color: AppColors.borderColor.withOpacity(0.7)),
                      padding: EdgeInsets.symmetric(
                        horizontal: 140.w,
                        vertical: 12.h,
                      ),
                    ),
                    child: Text(
                      "Abrir conta",
                      style: AppTextStyles.robotoRegular14Bold.apply(color: AppColors.blue2),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
