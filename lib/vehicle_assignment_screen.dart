import 'package:flutter/material.dart';
import 'package:navus_app/widget/information_box.dart';
import 'package:navus_app/widget/rounded_button.dart';
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
          title: const Text(
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
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                const InformationBox(title: "Vehicle", value: "Add a Vehicle"),
                const Spacer(),
                const InformationBox(title: "Trailers", value: "Add a Trailer"),
                const Spacer(),
                const InformationBox(
                  title: "Shipping IDs",
                  subTitle: "197687",
                  value: "Add a Shipping ID",
                ),
                const Spacer(flex: 8),
                RoundedButton(text: "Done", onPressed: () {}),
                const Spacer(flex: 9),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
