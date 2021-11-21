import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:navus_app/vehicle_assignment_screen.dart';
import 'constain.dart';

bool isHiddenPassword = true;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
          child: Container(
              //padding: const EdgeInsets.only(left:32, right: 32),

              height: size.height,
              width: size.width,
              child: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,

                  //alignment: Alignment.center,
                  children: [
                    Spacer(
                      flex: 6,
                    ),
                    //logo

                    SvgPicture.asset(assets_logo, alignment: Alignment.center),

                    Spacer(
                      flex: 1,
                    ),

                    //text sign in to your account
                    const Text(
                      "Sign in to your account",
                      style: TextStyle(
                        fontSize: 14,
                        color: textColor,
                      ),
                    ),

                    Spacer(
                      flex: 1,
                    ),

                    //input data
                    //ID
                    InputData(
                        textHint: "Fleet ID", icon: assets_id, size: size),

                    Spacer(),

                    //name
                    InputData(
                        textHint: "Username",
                        icon: assets_userName,
                        size: size),

                    Spacer(
                      flex: 1,
                    ),

//passwor       //password
                    InputData(
                        textHint: "Password",
                        icon: assets_lock,
                        size: size,
                        password: true,
                        onTap: () {
                          setState(() {
                            isHiddenPassword = !isHiddenPassword;
                          });
                        }),

                    Spacer(
                      flex: 1,
                    ),

                    //forgot password
                    Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Color(0xFF747D96)),
                          ),
                        )),

                    Spacer(
                      flex: 5,
                    ),

                    //login button
                    roundedButton(
                        text: "Login",
                        onPressed: () {
                          var route = MaterialPageRoute(
                              builder: (context) => VehiCleAssignmentScreen());
                          Navigator.push(context, route);
                        }),

                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              ))),
    );
  }
}

Widget InputData(
    {required String? textHint,
    required String icon,
    required size,
    bool password = false,
    onTap}) {
  if (password == false) {
    return Container(
      width: size!.width * 0.9,
      child: TextFormField(
          decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.solid, color: textColor),
        ),
        prefixIcon: SizedBox(
          child: SvgPicture.asset(
            icon,
            fit: BoxFit.scaleDown,
          ),
        ),
        hintText: textHint,
        hintStyle: TextStyle(color: textColor, fontSize: 14),
      )),
    );
  } else {
    return Container(
      width: size!.width * 0.9,
      child: TextFormField(
          obscureText: isHiddenPassword,
          decoration: InputDecoration(
            border: UnderlineInputBorder(
              borderSide:
                  BorderSide(style: BorderStyle.solid, color: textColor),
            ),
            hintText: textHint,
            hintStyle: TextStyle(color: textColor, fontSize: 14),
            prefixIcon: SizedBox(
              child: SvgPicture.asset(
                icon,
                fit: BoxFit.scaleDown,
              ),
            ),
            suffixIcon: InkWell(
                // alignment: Alignment.center,
                onTap: onTap,
                child: Icon(
                  Icons.remove_red_eye_outlined,
                  color: textColor,
                )),
          )),
    );
  }
}

Widget roundedButton({required String text, required onPressed}) {
  return Container(
      child: SizedBox(
    width: 311,
    height: 56,
    child: TextButton(
      onPressed: onPressed,
      child: Text(text, style: TextStyle(fontSize: 16)),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.5))),
      ),
    ),
  ));
}
