import 'package:czar_test_1/components/appbutton.dart';
import 'package:czar_test_1/components/navbarRoots.dart';
import 'package:czar_test_1/components/top_bar.dart';
import 'package:czar_test_1/screen/HomeScreen.dart';
import 'package:czar_test_1/screen/loginScreen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const TopBar(
                text: 'Create your',
                subtext: 'account!',
                footnote:
                    'Join and start making a difference in your community',
              ),
              const SizedBox(
                height: 30,
              ),
              _buildTextField('Full Name', 'Enter your name', _nameController),
              _buildTextField('Email Address', 'Enter your email address',
                  _emailController),
              _buildPasswordTextField(
                  'Password', 'Create Password', _passwordController),
              _buildPasswordTextField('Confirm Password', 'Confirm password',
                  _confirmPasswordController),
              const SizedBox(height: 5),
              _buildTermsAndConditions(),
              const SizedBox(height: 5),
              _buildContinueButton(),
              const SizedBox(height: 5),
              _buildDividerline(),
              const SizedBox(
                height: 8,
              ),
              _buildSignUpText(),
              const SizedBox(height: 15,),
              _buildSocialMediaSignIn(),
              const SizedBox(height: 20),
              _buildSignInText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      String label, String hint, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: Colors.black,
              fontFamily: 'poppins',
            ),
          ),
          TextFormField(
            controller: controller,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: hint,
              labelStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordTextField(
      String label, String hint, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: Colors.black,
              fontFamily: 'poppins',
            ),
          ),
          TextFormField(
            obscureText: _obscurePassword,
            controller: controller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: hint,
              labelStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
                color: Colors.grey,
              ),
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
                child: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTermsAndConditions() {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: const Padding(
        padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "By continuing, you accept our ",
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    height: 1,
                    letterSpacing: -0.2,
                  ),
                ),
                Text(
                  "Terms of use",
                  style: TextStyle(
                    color: Color(0xFF228B22),
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    height: 1,
                    letterSpacing: -0.2,
                  ),
                ),
                Text(
                  ' and',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    height: 0.4,
                    letterSpacing: -0.2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(100, 0, 50, 0),
              child: Row(
                children: [
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: Color(0xFF228B22),
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.normal,
                      height: 1,
                      letterSpacing: -0.2,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContinueButton() {
    return Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NavBarRoots()));
          },
          child: const Text(
            'Continue',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: 'Poppins'),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(320, 50),
            primary: const Color(0xFF228B22),
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          )),
    );
  }

  Widget _buildDividerline() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 10, 0),
      child: Row(
        children: [
          Container(
            child: const Divider(
              thickness: 1.0,
            ),
            width: 130,
          ),
          const SizedBox(width: 5,),
          const Text(
            "or",
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Colors.grey),
          ),
          const SizedBox(width: 5,),
          Container(
            child: const Divider(
              thickness: 1.0,
            ),
            width: 130,
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpText(){
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(130, 5, 10, 0),
          child: Center(
            child: Text(
              'Sign Up With: ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.17,
                fontFamily: 'Aeonik',
                fontWeight: FontWeight.bold,
                height: 0.11,
                letterSpacing: -0.41,
              ),
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildSocialMediaSignIn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialMediaIcon('assets/images/apple.png'),
        const SizedBox(width: 10),
        _buildSocialMediaIcon('assets/images/google_g_icon.png'),
      ],
    );
  }

  Widget _buildSocialMediaIcon(String imagePath) {
    return Container(
      height: 40,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.grey.shade300),
        image: DecorationImage(
          image: AssetImage(imagePath),
        ),
      ),
    );
  }

  Widget _buildSignInText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account? ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.17,
            fontFamily: 'Aeonik',
            fontWeight: FontWeight.w400,
            height: 0.11,
            letterSpacing: -0.41,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginScreen()));
          },
          child: const Text(
            'Log In',
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
    );
  }
}
