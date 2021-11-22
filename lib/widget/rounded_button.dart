import 'package:flutter/material.dart';

import '../constain.dart';

class RoundedButton extends StatefulWidget {
  final String text;
  final onPressed;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311,
      height: 56,
      child: TextButton(
        onPressed: widget.onPressed,
        child: Text(widget.text, style: TextStyle(fontSize: 16)),
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.5))),
        ),
      ),
    );
  }
}
