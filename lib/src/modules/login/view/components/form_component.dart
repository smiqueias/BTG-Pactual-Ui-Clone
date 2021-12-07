import 'package:btgpactual_ui_clone/src/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormComponent extends StatelessWidget {
  final String label;
  final TextInputFormatter inputFormatter;
  final Widget? icon;

  const FormComponent({Key? key, required this.label, required this.inputFormatter, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [inputFormatter],
      decoration: InputDecoration(
        labelText: label,
        suffixIcon: icon,
        labelStyle: AppTextStyles.robotoRegular16,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black87,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
