import 'package:flutter/material.dart';
import 'package:me_storage/home/widgets/login_field.dart';
import 'package:me_storage/home/widgets/register_field.dart';

class RegisterSwitch extends StatefulWidget {
  const RegisterSwitch({super.key});

  @override
  State<RegisterSwitch> createState() => _RegisterSwitchState();
}

class _RegisterSwitchState extends State<RegisterSwitch> {
  bool _isRegisterSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 42,
              width: 320,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 21, 65, 101),
                    offset: Offset(0, 2),
                    blurRadius: 3.5,
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromARGB(255, 31, 89, 137),
                    Color.fromARGB(255, 42, 90, 130),
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isRegisterSelected = !_isRegisterSelected;
                });
              },
              child: Padding(
                padding: _isRegisterSelected
                    ? const EdgeInsets.only(left: 150.0, top: 3.0)
                    : const EdgeInsets.only(left: 5.0, top: 3.0),
                child: Container(
                  height: 37,
                  width: 165,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 1,
                    ),
                    color: Color.fromARGB(0, 255, 255, 255),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 7.0),
                    child: Text(
                        _isRegisterSelected
                            ? "Have a Account?"
                            : "Register Now!",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        _isRegisterSelected ? const RegisterField() : const LoginField(),
      ],
    );
  }
}
