import 'package:flutter/material.dart';

import '../constain.dart';

class InformationBox extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
                    this.text,
                    style: TextStyle(
                      fontSize: 16,
                      color: appBarTextColor,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: !this.isId ? Expanded(
                  child: Text(
                    this.text,
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
          this.isId ? Container(
            child: Row(
              children: [
                Center(
                  child: Text(
                    this.id!,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Spacer(),
                Center(
                  child: Text(
                    this.rightText,
                    style: TextStyle(
                      fontSize: 16,
                      color: activeTextColor,
                    ),
                  ),
                ),
              ],
            ),

          ) : Container(),
          this.isId ? Spacer() : Container(),
        ],
      ),
    );
  }
}
