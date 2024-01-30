import 'package:czar_test_1/components/appbutton.dart';
import 'package:czar_test_1/components/navbarRoots.dart';
import 'package:czar_test_1/components/top_bar.dart';
import 'package:czar_test_1/screen/HomeScreen.dart';
import 'package:czar_test_1/screen/SignUpScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passToogle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const TopBar(
                  text: 'Welcome Back To',
                  subtext: 'account!',
                  footnote: 'Login to continue your volunteer journey',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Email Address",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'poppins'),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text(
                        "Enter your email address",
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Colors.grey),
                      )),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Password",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black,
                      fontFamily: 'poppins'),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  obscureText: passToogle ? true : false,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: const Text(
                        'Enter Password',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Colors.grey),
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          if (passToogle == true) {
                            passToogle = false;
                          } else {
                            passToogle = true;
                          }
                          setState(() {});
                        },
                        child: passToogle
                            ? const Icon(CupertinoIcons.eye_slash_fill)
                            : const Icon(CupertinoIcons.eye_fill),
                      )),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(250, 10, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot password ?',
                        style: TextStyle(
                          color: Color(0xFFFF0505),
                          fontSize: 11.81,
                          fontFamily: 'Aeonik',
                          fontWeight: FontWeight.w400,
                          height: 0.16,
                          letterSpacing: -0.41,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const NavBarRoots()));
                      },
                      child: const AppButton(
                                        text: 'Continue',
                                      ),
                    )),
                const SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 50, 0),
                  child: Row(
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.17,
                          fontFamily: 'Aeonik',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                          letterSpacing: -0.41,
                        ),
                      ),
                      const SizedBox(width: 5,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignUpScreen()));
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xFF228B22),
                            fontSize: 14.17,
                            fontFamily: 'Aeonik',
                            fontWeight: FontWeight.w400,
                            height: 0.11,
                            letterSpacing: -0.41,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
