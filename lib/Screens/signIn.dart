import 'package:flutter/material.dart';
import 'package:flutterfinalproject/Screens/signUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 30)),
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Color.fromRGBO(0, 32, 85, 1),
                  ),
                  Padding(padding: EdgeInsets.only(left: 100)),
                  Text(
                    'Sign In',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 32, 85, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 280)),
                  Image.asset('assets/images/yellowBall.png')
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 320)),
                  Image.asset('assets/images/purpleBall.png')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 310)),
                  Image.asset('assets/images/pinkBall.png')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 32, 85, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    'Please enter your email address',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 141, 149, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20)),
                  Text(
                    'and password for login',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 141, 149, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  // container 2
                  Container(
                    height: 60,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromRGBO(117, 110, 243, 1),
                      ),
                    ),
                    child: const TextField(
                      // controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'albart.ainstain@gmail.com',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(0, 32, 85, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 18.0,
                          horizontal: 20.0,
                        ),
                      ),
                      style: TextStyle(
                        color: Color.fromRGBO(0, 32, 85, 1),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  // container 2
                  Container(
                    height: 60,
                    width: 310,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromRGBO(233, 241, 255, 1),
                      ),
                    ),
                    child: const TextField(
                      // controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(134, 141, 149, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 18.0,
                          horizontal: 20.0,
                        ),
                      ),
                      style: TextStyle(
                        color: Color.fromRGBO(134, 141, 149, 1),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 200)),
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 32, 85, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 27)),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(117, 110, 243, 1),
                        borderRadius: BorderRadius.circular(18.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(
                                84, 81, 214, 0.8), // Darker shadow color
                            offset: Offset(0, 10), // Move the shadow down
                            blurRadius:
                                18.0, // Increase blur radius for a softer look
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 125.0, vertical: 16.0),
                      child: const Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 140)),
                  Text(
                    'SignIn with',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 141, 149, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 100)),
                  Image.asset('assets/images/Social.png'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 95)),
                  const Text(
                    'Not Registered Yet? ',
                    style: TextStyle(
                      color: Color.fromRGBO(134, 141, 149, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                  
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const SignUp()), 
                      );
                    },
                    child: const Text(
                      'Sign Up ',
                      style: TextStyle(
                        color: Color.fromRGBO(117, 110, 243, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
