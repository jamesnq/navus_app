import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
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
          child: Column(
            children: [
              Spacer(

              ),

              informationBox(text: "Vehicle", size: size),

              Spacer(

              ),

              informationBox(text: "Trailers", size: size),

              Spacer(

              ),

              informationBox(text: "Shipping ID", size: size),

              Spacer(
                flex: 8,
              ),

              roundedButton(text: "Done", onPressed: () {}),

              Spacer(
                flex: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget informationBox({required String text, required size}) {
  return Card(
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: appBarTextColor,
            ),
          ),


       SizedBox(width: 1),

       Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: appBarTextColor,
          ),
        ),

      ],
    ),
  );
}