import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/login.png"),
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
                ),
                TextFormField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "password"),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Login"),style: TextButton.styleFrom(foregroundColor: ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
