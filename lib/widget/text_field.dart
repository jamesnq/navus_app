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
    controller,
  }) : super(key: key);

  @override
  _TextFieldState createState() => _TextFieldState();
}

class _TextFieldState extends State<TextFieldCustom> {
  bool showPassword = false;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

    return Form(
      key: _formkey,
      child: SizedBox(
        width: size.width * 0.9,
        child: TextFormField(
          obscureText: !showPassword,
          validator: (value) {
            if(value.isNotEmpty && value.length < 8) {
              if(widget.isPassword) {
                if(!regex.hasMatch(value)) {
                  return 'Password must contain 8 digits and have at least 1 Upper case, 1 Numeric Number and 1 Speacial Character';
                } else {
                  return null;
                }
              }
              return 'Please enter at least 8 digit';
            } else {
              return 'Please enter the required field';
            }
          },
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
      ),
    );
  }
}
