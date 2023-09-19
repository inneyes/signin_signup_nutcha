// import 'package:flutter/material.dart';

// class SignUpScreen extends StatelessWidget {
//   const SignUpScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black,
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/mybutton.dart';
import 'package:onboarding_screen/component/myiconbuttin.dart';
import 'package:onboarding_screen/component/mytextbutton.dart';
import 'package:onboarding_screen/component/mytextfiled.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final confirmpwdController = TextEditingController();

  void SignInUser() async {
    if (emailController.text != "" && passwordController.text != "") {
      print("it's oki");
    } else {
      print("please put your email and password");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Register meow",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "please fill in the form",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displaySmall,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 30),
              MyTextFiled(
                  controller: nameController,
                  hintText: 'please put your name',
                  labelText: 'name',
                  obscureText: false),
              const SizedBox(height: 30),
              MyTextFiled(
                  controller: emailController,
                  hintText: 'please put your email',
                  labelText: 'email',
                  obscureText: false),
              const SizedBox(height: 30),
              MyTextFiled(
                  controller: passwordController,
                  hintText: 'please put your password',
                  labelText: 'password',
                  obscureText: true),
              const SizedBox(height: 30),
              MyTextFiled(
                  controller: confirmpwdController,
                  hintText: 'confirm your password',
                  labelText: 'confirm your password',
                  obscureText: true),
              const SizedBox(
                height: 20,
              ),
              // const MyTextButton(
              //   labelText: 'forgot password?',
              //   pageRoute: 'forgot',
              // ),
              const SizedBox(
                height: 25,
              ),
              MyButton(ontap: SignInUser, hintText: 'Sign up'),
              const SizedBox(
                height: 35,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 141, 137, 137),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'or continue with',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 141, 137, 137),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myIconButton(imagePath: 'assets/image/apple.png'),
                  SizedBox(
                    width: 10,
                  ),
                  myIconButton(imagePath: 'assets/image/google.png'),
                ],
              ),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("already a member?"),
                    MyTextButton(
                      labelText: 'sign in',
                      pageRoute: 'sign in',
                    )
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
