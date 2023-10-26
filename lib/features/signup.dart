
import 'package:first_project/features/login_page.dart';
import 'package:first_project/widgets/padded_textfield.dart';
import "package:flutter/material.dart";

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible = true;

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 150.0, bottom: 30.0),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Text(
                      "Let's create your account",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        letterSpacing: 2.50,
                      ),
                    ),
                  ],
                ),
              ),
              const Column(
                children: [
                  PaddedTextField(
                    labelText: 'Jose Rizal',
                    hintText: 'Full Name',
                  ),
                  PaddedTextField(
                    labelText: '2020-107-888',
                    hintText: 'School ID Number',
                  ),
                  PaddedTextField(
                    labelText: 'Jrizal@rtu.edu.ph',
                    hintText: 'School Email',
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                  child: TextField(
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Secure Password',
                      helperText: 'Password must contain special character',
                      helperStyle: const TextStyle(color: Colors.green),
                      suffixIcon: GestureDetector(
                        child: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),
                        onTap: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                      alignLabelWithHint: false,
                      filled: true,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
                child: TextField(
                  obscureText: !_passwordVisible,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    suffixIcon: GestureDetector(
                        child: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),
                        onTap: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        }),
                    alignLabelWithHint: false,
                    filled: true,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const AlertDialog(
                          content: Text("Sign Up Success! Please check you registered RTU E-mail Account\n"
                              "Sign Up Success! Please check you registered RTU E-mail Account\n"
                              "Sign Up Success! Please check you registered RTU E-mail Account\n"
                              "Sign Up Success! Please check you registered RTU E-mail Account\n"),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        );
                      },
                    ).then((value) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF30CBF8),
                    minimumSize: const Size(350, 50),
                  ),
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
