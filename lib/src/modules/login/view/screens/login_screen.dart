import 'package:btgpactual_ui_clone/src/core/app_colors.dart';
import 'package:btgpactual_ui_clone/src/core/app_images.dart';
import 'package:btgpactual_ui_clone/src/core/app_text_styles.dart';
import 'package:btgpactual_ui_clone/src/modules/login/view/components/form_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var cpfMask = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {
      "#": RegExp(r'[0-9]'),
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(30.0.h),
              child: Align(
                alignment: Alignment.centerRight,
                child: Image.asset(
                  AppImages.questionMark,
                  height: 30.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0.h),
              child: Text.rich(
                TextSpan(
                  text: "Olá! \n",
                  style: AppTextStyles.robotoRegular22Bold,
                  children: [
                    TextSpan(
                      text: "Seja bem-vindo(a).",
                      style: AppTextStyles.robotoRegular22.apply(
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.all(12.0.h),
              child: Form(
                child: Column(
                  children: [
                    FormComponent(label: "CPF", inputFormatter: cpfMask),
                    SizedBox(height: 8.h),
                    FormComponent(
                      label: "Senha",
                      inputFormatter: FilteringTextInputFormatter.allow(
                        RegExp(r'[0-9]'),
                      ),
                      icon: Icon(Icons.visibility, color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0.h),
                child: Text(
                  "Esqueci minha senha",
                  style: AppTextStyles.robotoRegular12Bold.apply(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.0.h),
              child: Row(
                children: [
                  Icon(Icons.vpn_key_outlined, size: 18.h),
                  SizedBox(width: 4.w),
                  Text(
                    "Ativar Token",
                    style: AppTextStyles.robotoRegular16,
                  ),
                ],
              ),
            ),
            SizedBox(height: 120.h),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Ainda não sou cliente",
                  style: AppTextStyles.robotoRegular12.apply(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: AppColors.blue,
                  padding: EdgeInsets.symmetric(
                    horizontal: 140.w,
                    vertical: 18.h,
                  ),
                ),
                child: Text(
                  "Entrar",
                  style: AppTextStyles.robotoRegular14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
