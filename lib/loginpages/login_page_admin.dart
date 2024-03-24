import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:estk_pfe/pages/dashbord.dart';
import 'package:estk_pfe/widget/input_field.dart';
import 'package:animate_do/animate_do.dart';

class LoginAdminScreen extends StatefulWidget {
  const LoginAdminScreen({Key? key}) : super(key: key);

  @override
  State<LoginAdminScreen> createState() => _LoginAdminScreenState();
}

class _LoginAdminScreenState extends State<LoginAdminScreen> {
  final _auth = FirebaseAuth.instance;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _signUp() async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Navigate to the dashboard screen after successful sign-up
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
      );
    } catch (e) {
      // Handle sign-up errors
      print(e);
    }
  }

  void _signIn() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Navigate to the dashboard screen after successful sign-in
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
      );
    } catch (e) {
      // Handle sign-in errors
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: width / 1.2,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInUp(
                    duration: const Duration(milliseconds: 1100),
                    child: Center(
                      child: Image.asset(
                        "assets/images/logo3.png",
                        height: MediaQuery.of(context).size.height * 0.28,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInUp(
                        duration: const Duration(milliseconds: 1200),
                        child: const Text(
                          "Bienvenue dans l'espace Administrateur",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Sarala',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1300),
                        child: const Text(
                          "Connectez-vous maintenant ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontFamily: 'Sarala',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1400),
                        child: const Text(
                          "Contactez l'administrateur pour obtenir vos identifiants.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'SaralaRegulair',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1500),
                    child: InputField(
                      hinttext: "E-mail",
                      controller: _emailController,
                      isPassword: false,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1600),
                    child: InputField(
                      hinttext: "Mot de passe",
                      controller: _passwordController,
                      isPassword: true,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1700),
                    child: Row(
                      children: [
                        const Text(
                          "Mot de passe oublié?",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontFamily: 'SaralaRegulair',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.transparent),
                              overlayColor: MaterialStateProperty.resolveWith(
                                (states) {
                                  if (states.contains(MaterialState.hovered)) {
                                    return Colors
                                        .transparent; // Set transparent color when hovered
                                  }
                                  return null; // Use default overlay color for other states
                                },
                              ),
                            ),
                            child: const Text(
                              "Notifier l'administration",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontFamily: 'SaralaRegulair',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1800),
                    child: ElevatedButton(
                      onPressed: _signUp,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(
                          const Size(double.infinity, 60),
                        ),
                      ),
                      child: const Text(
                        'SignUp',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 1900),
                    child: ElevatedButton(
                      onPressed: _signIn,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(
                          const Size(double.infinity, 60),
                        ),
                      ),
                      child: const Text(
                        'SignIn',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 2000),
                    child: const Center(
                      child: Text(
                        "Réalisation par Omar Chouhani \n Abderrahmane Chaoui",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontFamily: 'SaralaRegulair',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
