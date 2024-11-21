import 'package:auth/warehouse/custom_widgets/bottomNavBar.dart';
import 'package:flutter/material.dart';

class RedAppBar extends StatelessWidget {
  final String button;
  final String textt;

  const RedAppBar({
    super.key,
    required this.button,
    required this.textt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffff0209), // Start color
            Color(0xFF7f0202), // End color
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(186, 113, 113, 113),
            blurRadius: 15,
            spreadRadius: 1,
            offset: Offset(0, 5),
          ),
        ],
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
      ),
      child: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
        title: null,
        flexibleSpace: Stack(
          children: [
            if (button.isNotEmpty)
              Positioned(
                  top: 25,
                  left: 15,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const BottomNavBar()),
                      );
                    },
                    icon: Image.asset(button),
                  ),
                  ),
            Center(
              child: Text(
                textt,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'akshar',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 25,
              right: 15,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
                padding: const EdgeInsets.all(9),
                child: Image.asset(
                  'assets/red.png',
                  height: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
