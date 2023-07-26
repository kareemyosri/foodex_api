import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TextFormFieldCustom({
  required TextEditingController? controller,
  TextInputType? keyboardType,
  Widget? prefixIcon,
  Widget? suffixIcon,
  required String hintText,
  String? labelText,
  String? Function(String?)? validator,
  Function()? ontap,
  Color? prefixIconColor,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validator,
      onTap: ontap,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconColor: prefixIconColor,
        suffixIcon: suffixIcon,
        hintText: hintText,
        helperStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: 'BentonSansregular',
        ),
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xFF53E88B),
          ),
        ),
      ),
    ),
  );
}
