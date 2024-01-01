import 'package:flutter/material.dart';
import 'package:patientfrontend/colors/colors.dart';
class CustomTextControllers extends StatelessWidget {
  final String? hint;
  final TextEditingController? t;
  const CustomTextControllers({Key? key,
  required this.hint,
    this.t
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: t,
      keyboardType: TextInputType.text,
      style: TextStyle(color:Colors.black),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color:Colors.blueGrey),
        focusedBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color:loginpagecolor)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: loginpagecolor),
        ),
        border: InputBorder.none,
      ),
      cursorColor: loginpagecolor,

    );
  }
}

