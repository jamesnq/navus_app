import 'package:flutter/material.dart';

import '../constain.dart';

class InformationBox extends StatefulWidget {
  final String text;
  final String rightText;
  final String? id;
  final bool isId;
  const InformationBox({
    Key? key,
    required String this.text,
    required String this.rightText,
    String? this.id,
    this.isId = false,
  }) : super(key: key);

  @override
  _InformationBoxState createState() => _InformationBoxState();
}

class _InformationBoxState extends State<InformationBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 16, right: 16),
      height: 100,
      child: Column(
        children: [
          Spacer(),
          //Row 1
          Row(
            children: [
              Center(
                child: Expanded(
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: 16,
                      color: appBarTextColor,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: !widget.isId ? Expanded(
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: 16,
                      color: appBarTextColor,
                    ),
                  ),
                ) : null
              ),
            ],

          ),
           Spacer(),
          //Row 2
          widget.isId ? Container(
            child: Row(
              children: [
                Center(
                  child: Text(
                    widget.id!,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Spacer(),
                Center(
                  child: Text(
                    widget.rightText,
                    style: TextStyle(
                      fontSize: 16,
                      color: activeTextColor,
                    ),
                  ),
                ),
              ],
            ),

          ) : Container(),
          widget.isId ? Spacer() : Container(),
        ],
      ),
    );
  }
}
