import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:navus_app/constain.dart';
import 'package:navus_app/text_validation.dart';

class TextFieldCustom extends StatefulWidget {
  final String leafIcon;
  final bool isPassword;
  final String placeholder;
  final String? errorText;
  final onChanged;
  TextFieldCustom({
    Key? key,
    required this.leafIcon,
    this.isPassword = false,
    required this.placeholder,
    controller,
    this.errorText,
    this.onChanged,
  }) : super(key: key);

  @override
  _TextFieldState createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldCustom> {
  bool showPassword = false;
  String? usernameError;
  String? passwordError;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return SizedBox(
      width: size.width * 0.9,
      child: TextField(
        obscureText: widget.isPassword ? !showPassword : showPassword,
        decoration: InputDecoration(
          errorText: widget.errorText,
          border: const UnderlineInputBorder(
            borderSide: BorderSide(
              style: BorderStyle.solid,
              color: textColor,
            ),
          ),
          prefixIcon: SizedBox(
            child: SvgPicture.asset(
              widget.leafIcon,
              fit: BoxFit.scaleDown,
            ),
          ),
          suffixIcon: widget.isPassword
              ? InkWell(
            onTap: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
            child: Icon(
              showPassword
                  ? Icons.remove_red_eye_outlined
                  : Icons.remove_red_eye,
              color: textColor,
            ),
          )
              : null,
          hintText: widget.placeholder,
          hintStyle: const TextStyle(
            color: textColor,
            fontSize: 14,
          ),

        ),
        onChanged: widget.onChanged,

      ),
    );
  }



  // validate() {
  //   if(!validateStructure(value: widget.controller.text)){
  //     setState(() {
  //       usernameError = "Please enter 8 digits";
  //     });
  //     return;
  //   };

  }


