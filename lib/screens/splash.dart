import 'package:cross_local_storage/cross_local_storage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../screens/home.dart';
import '../screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late LocalStorageInterface _localStorage;

  _initLocalStorage() async {
    _localStorage = await LocalStorage.getInstance();
  }

  @override
  void initState() {
    super.initState();
    _initLocalStorage();
    Future.delayed(
      const Duration(seconds: 6),
      () => {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => _localStorage.getBool('isOnboarded') == true
                ? const Home()
                : const Onboarding(),
          ),
        ),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 238, 226, 1),
      body: Center(
        child: Lottie.asset(
          'assets/splash/splash.json',
        ),
      ),
    );
  }
}
