import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginField extends StatefulWidget {
  const LoginField({super.key});

  @override
  State<LoginField> createState() => _LoginFieldState();
}

class _LoginFieldState extends State<LoginField> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 300,
          child: TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 60,
          width: 300,
          child: TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: 'Passwort',
              labelStyle: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        SizedBox(height: 9),
        Padding(
          padding: const EdgeInsets.only(
            right: 140.0,
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Passwort vergessen?',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: Color.fromARGB(255, 31, 89, 137),
                fontSize: 15,
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Center(
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 250,
              decoration: BoxDecoration(
                color: Color.fromARGB(0, 255, 255, 255),
                border: Border.all(
                  color: Color.fromARGB(255, 31, 89, 137),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 85.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 17,
                      ),
                    ),
                  ),
                  SizedBox(width: 60),
                  Icon(
                    Icons.chevron_right,
                    color: Color.fromARGB(255, 31, 89, 137),
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
