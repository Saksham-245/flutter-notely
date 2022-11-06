import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/screens/signup.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(248, 238, 226, 1),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Notely'.toUpperCase(),
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: Theme.of(context).textTheme.headline1?.fontFamily,
              fontWeight: Theme.of(context).textTheme.headline1?.fontWeight,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 118.h,
          ),
          Center(
            child: Image.asset(
              'assets/images/onboarding.png',
              height: 197.h,
              width: 268.w,
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          Column(
            children: [
              Text(
                'World’s Safest And \n Largest Digital Notebook',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: Theme.of(context).textTheme.headline2?.fontWeight,
                  fontFamily: Theme.of(context).textTheme.headline2?.fontFamily,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                'Notely is the world’s safest, largest and \n intelligent digital notebook. Join over \n 10M+ users already using Notely.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromRGBO(89, 85, 80, 1),
                  fontSize: 16,
                  fontFamily: Theme.of(context).textTheme.headline3?.fontFamily,
                ),
              ),
              SizedBox(
                height: 65.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(
                    217,
                    97,
                    76,
                    1,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 60.w,
                    vertical: 16.h,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignUp();
                      },
                    ),
                  );
                },
                child: Text(
                  'Get Started'.toUpperCase(),
                  style: TextStyle(
                    height: 26.h / 16,
                    fontSize: 20,
                    letterSpacing: 4,
                    fontFamily:
                        Theme.of(context).textTheme.headline2?.fontFamily,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromRGBO(217, 97, 76, 1),
                    fontFamily:
                        Theme.of(context).textTheme.headline4?.fontFamily,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
