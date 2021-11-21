import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'constain.dart';

class VehiCleAssignmentScreen extends StatefulWidget {
  const VehiCleAssignmentScreen({Key? key}) : super(key: key);

  @override
  _VehiCleAssignmentScreenState createState() => _VehiCleAssignmentScreenState();
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
          title: Text("Assignments", style: TextStyle(
            color: appBarTextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
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
                informationBox(text: "Vehicle", rightText: "Add a Vehicle"),
                Spacer(),
                informationBox(text: "Trailers", rightText: "Add a Trailer"),
                Spacer(),
                informationBox(text: "Shipping IDs", rightText: "Add a Shipping ID", id: "197687"),
                Spacer(flex: 8),
                roundedButton(text: "Done", onPressed: () {}),
                Spacer(flex: 9),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget informationBox({required String text, required String rightText, String? id}) {
  if(id == null) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 16, right: 16),
      height: 79,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16,
                color: appBarTextColor,
              ),
            ),
          ),

          Spacer(),

          Center(
            child: Text(
              rightText,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 16,
                color: activeTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  } else {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 16, right: 16),
      height: 100,
      child: Column(
        children: [
          Spacer(flex: 2),
          //Row 1
          Row(
            children: [
              Center(
                child: Expanded(
                  child: Text(
                    text,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: appBarTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          //Row 2
          Row(
            children: [
              Center(
                child: Text(
                  id,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

              Spacer(),

              Center(
                child: Text(
                  rightText,
                  style: TextStyle(
                    fontSize: 16,
                    color: activeTextColor,
                  ),
                ),
              ),
            ],
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }

}