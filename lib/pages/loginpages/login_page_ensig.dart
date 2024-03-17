import 'package:estk_pfe/constant.dart';
import 'package:estk_pfe/widget/input_field.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class LoginScreenEnseig extends StatefulWidget {
  const LoginScreenEnseig({super.key});

  @override
  State<LoginScreenEnseig> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginScreenEnseig> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var witdh = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: isweb ? witdh / 2.1 : witdh / 1.2,
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
                        "Bienvenue dans l'espace Enseignant",
                        style: TextStyle(
                          color: secondColor,
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
                          color: secondColor,
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
                          color: customColor2,
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
                    )),
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
                          color: customColor2,
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
                            overlayColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.hovered)) {
                                return Colors
                                    .transparent; // Set transparent color when hovered
                              }
                              return null; // Use default overlay color for other states
                            }),
                          ),
                          child: const Text(
                            "Notifier l'administrateur",
                            style: TextStyle(
                              color: secondColor,
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
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(secondColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6))),
                        minimumSize: MaterialStateProperty.all(const Size(
                            double.infinity, 60)), // Set height to 50
                      ),
                      child: const Text(
                        'Commencer',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
                FadeInUp(
                  duration: const Duration(milliseconds: 1900),
                  child: Center(
                      child: Image.asset(
                    "assets/images/estkdigital.png",
                    height: MediaQuery.of(context).size.height * 0.09,
                  )),
                ),
                FadeInUp(
                  duration: const Duration(milliseconds: 2000),
                  child: const Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Réalisation par Omar Chouhani \n Abderrahmane Chaoui ",
                      style: TextStyle(
                        color: customColor2,
                        fontSize: 13,
                        fontFamily: 'SaralaRegulair',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
