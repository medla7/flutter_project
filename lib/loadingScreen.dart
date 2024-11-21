import 'package:auth/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<LoadingScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const Auth()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background container
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 1, 137, 58), // Start color
                  Color.fromARGB(255, 28, 44, 104), // End color
                ],
              ),
            ),
          ),
          // Circle in the center
          Center(
            child: Transform.scale(
              scale: 1.6,
              child: Container(
                height: 500,
                width: 400, 
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white, 
                ),
                child: const Center(
                  child: Image(
                    image: AssetImage('assets/org.png'),
                    width: 60,
                  ),
                ),
              ),
            ),
          ),
          //logo in the bottom
          Positioned(
            bottom: 20,
            left: MediaQuery.of(context).size.width / 2 - 120,
            child: SizedBox(
              width: 250,
              child: Image.asset(
                'assets/abyathelkool.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Separate the Circle widget into its own class
class CustomCircle extends StatelessWidget {
  const CustomCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 400, // Diameter of the circle
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white, // Color of the circle
      ),
      child: const Center(
        child: Image(
          image: AssetImage('assets/org.png'),
          width: 60,
        ),
      ),
    );
  }
}
