import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:me_storage/home/styles/styles.dart';
import 'package:me_storage/home/widgets/register_switch.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({super.key});

  @override
  State<EnterScreen> createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: customBackground(),
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    customLogo(),
                    SizedBox(height: 20),
                    RegisterSwitch(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ).animate().shimmer(
                duration: const Duration(milliseconds: 2000),
                color: Color.fromARGB(183, 197, 230, 255),
                curve: Curves.easeInOutCubic,
              ),
        ),
      ),
    );
  }
}
