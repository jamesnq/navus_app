import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:navus_app/vehicle_assignment_screen.dart';
import 'package:navus_app/widget/rounded_button.dart';
import 'package:navus_app/widget/text_field.dart';
import 'constain.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController? usernameController;
  TextEditingController? passwordController;
  String username = "none";
  String password = "none";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usernameController!.dispose();
    passwordController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Center(
            child: Column(
              children: [
                const Spacer(flex: 6), //6
                SvgPicture.asset(assets_logo, alignment: Alignment.center),
                const Spacer(flex: 1),
                const Text(
                  "Sign in to your account",
                  style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                  ),
                ),
                const Spacer(flex: 1),
                TextFieldCustom(
                  placeholder: "Fleet ID",
                  leafIcon: assets_id,
                ),
                const Spacer(),
                TextFieldCustom(
                  placeholder: "Username",
                  leafIcon: assets_userName,
                  controller: usernameController,
                ),
                const Spacer(flex: 1),
                TextFieldCustom(
                  placeholder: "Password",
                  leafIcon: assets_lock,
                  isPassword: true,
                  controller: passwordController,
                ),
                const Spacer(flex: 1),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Color(0xFF747D96)),
                    ),
                  ),
                ),
                const Spacer(flex: 5),//5
                RoundedButton(
                  text: "Login",
                  onPressed: () {
                    var route = MaterialPageRoute(
                        builder: (context) => VehiCleAssignmentScreen());
                    Navigator.push(context, route);
                  },
                ),
                const Spacer(flex: 3),//3
              ],
            ),
          ),
        ),
      ),
    );
  }
}

