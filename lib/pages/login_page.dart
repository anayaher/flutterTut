import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  bool changeBtn = false;

  moveToHome(BuildContext) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeBtn = true;
      });

      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeBtn = false;
      });
    } else
      () {};
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              height: 350,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Login !",
              style: TextStyle(fontSize: 25),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "The Username is Empty";
                      }
                      return null;
                    },
                  ),

                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "The Password is Empty";
                      } else if (value.length < 6) {
                        return " length should be Min 6 Chars";
                      }
                      return null;
                    },
                    obscureText: true,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "password"),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    borderRadius: changeBtn
                        ? BorderRadius.circular(50)
                        : BorderRadius.circular(8),
                    color: Colors.lightBlue,
                    child: InkWell(
                      onTap: (() => moveToHome(context)),
                      child: AnimatedContainer(
                        width: changeBtn ? 40 : 150,
                        alignment: Alignment.center,
                        height: 35,
                        duration: Duration(seconds: 1),
                        child: changeBtn
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   child: Text("Login"),
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(150, 40),
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
