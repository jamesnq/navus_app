import 'package:flutter/material.dart';

class InformationBox extends StatelessWidget {
  final String title;
  final String? value;
  final String? subTitle;
  final Widget? right;

  const InformationBox({
    Key? key,
    required this.title,
    this.value,
    this.subTitle,
    this.right,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 17),
              ),
              subTitle != null
                  ? Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text(
                        subTitle ?? "",
                        style: const TextStyle(fontSize: 14),
                      ),
                    )
                  : Container(),
            ],
          ),
          Text(
            value ?? "",
            style: const TextStyle(fontSize: 17, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
