import 'package:flutter/material.dart';

class MainHead extends StatefulWidget {
  const MainHead({super.key});

  @override
  State<MainHead> createState() => _MainHeadState();
}

class _MainHeadState extends State<MainHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35.0, top: 30.0),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 30),
            child: Container(
              child: Column(
                children: [
                  Text("Bananen Basti",
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  Text(
                    "My personal Storage",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55.0, top: 28),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: Colors.white, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
