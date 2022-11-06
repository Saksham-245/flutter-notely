import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInputs extends StatelessWidget {
  const TextInputs({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.keyboardType,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        style: TextStyle(
          fontSize: 16,
          color: const Color.fromRGBO(89, 85, 80, 1),
          fontWeight: Theme.of(context).textTheme.headline3?.fontWeight,
          fontFamily: Theme.of(context).textTheme.headline3?.fontFamily,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          label: Text(
            labelText,
            style: TextStyle(
              fontSize: 16,
              color: const Color.fromRGBO(89, 85, 80, 1),
              fontWeight: Theme.of(context).textTheme.headline3?.fontWeight,
              fontFamily: Theme.of(context).textTheme.headline3?.fontFamily,
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromRGBO(242, 229, 213, 1), width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromRGBO(242, 229, 213, 1), width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
