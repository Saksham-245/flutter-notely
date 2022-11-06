import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notely/components/text_inputs.dart';
import 'package:notely/screens/home.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    var fullNameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            SizedBox(
              height: 62.h,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'Create a free account',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight:
                          Theme.of(context).textTheme.headline2?.fontWeight,
                      fontFamily:
                          Theme.of(context).textTheme.headline2?.fontFamily,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Join Notely for free. Create and share \n unlimited notes with your friends.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromRGBO(89, 85, 80, 1),
                      fontWeight:
                          Theme.of(context).textTheme.headline3?.fontWeight,
                      fontFamily:
                          Theme.of(context).textTheme.headline3?.fontFamily,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 52.h,
            ),
            TextInputs(
              controller: fullNameController,
              labelText: 'Full Name',
              hintText: 'Salman Khan',
              keyboardType: TextInputType.name,
            ),
            SizedBox(
              height: 45.h,
            ),
            TextInputs(
              controller: emailController,
              labelText: 'Email Address',
              hintText: 'mesalmanwap@gmail.com',
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(
              height: 45.h,
            ),
            TextInputs(
              controller: passwordController,
              labelText: 'Password',
              hintText: '############',
              keyboardType: TextInputType.visiblePassword,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom / 2,
              ),
            ),
            SizedBox(
              height: 85.h,
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
                print({
                  'fullName': fullNameController.text,
                  'email': emailController.text,
                  'password': passwordController.text,
                });
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Home();
                    },
                  ),
                );
              },
              child: Text(
                'Create Account',
                style: TextStyle(
                  height: 26.h / 16,
                  fontSize: 20,
                  letterSpacing: 4,
                  fontFamily: Theme.of(context).textTheme.headline2?.fontFamily,
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
                  fontFamily: Theme.of(context).textTheme.headline4?.fontFamily,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
