import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/login_ui/sing_up_page.dart';

class LoginUiPage extends StatelessWidget {
  const LoginUiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .06,
              ),
              Image.asset(
                'assets/images/welcome_image_login.png',
                width: 260,
                height: 220,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 34,
              ),
              const Text(
                'Welcome',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 40,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Color(0xfff97d7d),
                    )),
              ),
              const SizedBox(
                height: 14,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    prefixIcon: Icon(
                      Icons.edit,
                      color: Color(0xfff97d7d),
                    )),
              ),
              Align(
                alignment: Alignment.topRight,
                child: MaterialButton(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  elevation: 0,
                  onPressed: () {},
                  child: const Text(
                    'Forget Password?',
                    style: TextStyle(color: Color(0xfff97d7d)),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: MaterialButton(
                  color: const Color(0xfff97d7d),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'or,login,with...',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(width: 1, color: Color(0xFFBDBDBD),)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset(
                          'assets/images/google.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(width: 1, color: Color(0xFFBDBDBD),)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset(
                          'assets/images/facebook.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: Colors.transparent,
                      elevation: 0,
                      margin: const EdgeInsets.symmetric(horizontal: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(width: 1, color: Color(0xFFBDBDBD),)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Image.asset(
                          'assets/images/apple.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text: "if haven't an account? ",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 13
                    ),
                  ),
                  TextSpan(
                    text: 'Register',
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (c, a1, a2) => const SingUpPage(),

                          transitionsBuilder: (c, anim, a2, child) => FadeTransition(opacity: anim, child: child),
                          transitionDuration: const Duration(milliseconds: 1000),
                        ),
                      );
                      },
                    style: const TextStyle(
                        color: Color(0xffee0f37),
                        fontWeight: FontWeight.w700,
                        fontSize: 13
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
