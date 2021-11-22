import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:navus_app/constain.dart';

class TextFieldCustom extends StatefulWidget {
  final String leafIcon;
  final bool isPassword;
  final String placeholder;

  const TextFieldCustom({
    Key? key,
    required this.leafIcon,
    this.isPassword = false,
    required this.placeholder,
  }) : super(key: key);

  @override
  _TextFieldState createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldCustom> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.9,
      child: TextFormField(
        obscureText: !showPassword,
        decoration: InputDecoration(
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
      ),
    );
  }
}