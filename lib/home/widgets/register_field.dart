import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:me_storage/home/screens/mainpage.dart';

class RegisterField extends StatefulWidget {
  const RegisterField({super.key});

  @override
  State<RegisterField> createState() => _RegisterFieldState();
}

class _RegisterFieldState extends State<RegisterField> {
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
        SizedBox(height: 30),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainPage()));
            },
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
                    padding: const EdgeInsets.only(left: 83.9),
                    child: Text(
                      'Register',
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
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(right: 180.0, top: 20.0),
          child: Text("Or Register with:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.white,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 100),
          child: Row(
            children: [
              IconButton(
                icon: Icon(FontAwesomeIcons.google),
                onPressed: () {},
                color: Color.fromARGB(255, 31, 89, 137),
                iconSize: 40,
              ),
              SizedBox(width: 80),
              IconButton(
                icon: Icon(FontAwesomeIcons.apple),
                onPressed: () {},
                color: Color.fromARGB(255, 31, 89, 137),
                iconSize: 50,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
