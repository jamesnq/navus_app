import 'package:flutter/material.dart';
import 'package:navus_app/widget/information_box.dart';
import 'package:navus_app/widget/rounded_button.dart';
import 'login_screen.dart';
import 'constain.dart';

class VehiCleAssignmentScreen extends StatefulWidget {
  const VehiCleAssignmentScreen({Key? key}) : super(key: key);

  @override
  _VehiCleAssignmentScreenState createState() =>
      _VehiCleAssignmentScreenState();
}

class _VehiCleAssignmentScreenState extends State<VehiCleAssignmentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Text(
            "Assignments",
            style: TextStyle(
              color: appBarTextColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          width: size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                InformationBox(text: "Vehicle", rightText: "Add a Vehicle"),
                Spacer(),
                InformationBox(text: "Trailers", rightText: "Add a Trailer"),
                Spacer(),
                InformationBox(
                    text: "Shipping IDs",
                    rightText: "Add a Shipping ID",
                    id: "197687",
                    isId: true,
                ),
                Spacer(flex: 8),
                RoundedButton(text: "Done", onPressed: () {}),
                Spacer(flex: 9),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
