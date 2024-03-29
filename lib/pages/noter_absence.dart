import 'package:estk_pfe/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class NoterAbsPages extends StatefulWidget {
  const NoterAbsPages({super.key});

  @override
  State<NoterAbsPages> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NoterAbsPages> {
  

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('dd MMMM yyyy').format(now);
    String formattedTime = DateFormat('HH:mm').format(now);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logoestk_digital.svg',
          height: 40,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: SizedBox(
          height: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Enregistrement absence',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: 'Sarala',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Début de cour',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: secondcolor,
                            fontSize: 15,
                            fontFamily: 'Sarala',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          '14:30',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: greencolor,
                            fontSize: 30,
                            fontFamily: 'Sarala',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 95),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          formattedDate, // Display formatted date
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: secondcolor,
                            fontSize: 15,
                            fontFamily: 'Sarala',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          formattedTime, // Display formatted time
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: firstcolor,
                            fontSize: 40,
                            fontFamily: 'Sarala',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 95),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Fin de cour',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: secondcolor,
                            fontSize: 15,
                            fontFamily: 'Sarala',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          '18:30',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Color(0xFFFCCB06),
                            fontSize: 30,
                            fontFamily: 'Sarala',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check,
                                color: greencolor,
                                size: 30,
                              ),
                              const SizedBox(width: 5),
                              Text(
                                'Enregistrement effectué',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: greencolor,
                                  fontSize: 17,
                                  fontFamily: 'Sarala',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 15),
                          Row(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.close,
                                    color: redcolor,
                                    size: 30,
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Enregistrement non effectué',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: redcolor,
                                      fontSize: 17,
                                      fontFamily: 'Sarala',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 25),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(30),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: greencolor),
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.login,
                                    color: greencolor,
                                    size: 70,
                                  ),
                                  const SizedBox(height: 25),
                                  Text(
                                    'Début de absence',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: secondcolor,
                                      fontSize: 20,
                                      fontFamily: 'Sarala',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ]),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            padding: const EdgeInsets.all(30),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1, color: greencolor),
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.logout,
                                    color: greencolor,
                                    size: 70,
                                  ),
                                  const SizedBox(height: 25),
                                  Text(
                                    'Fin de absence',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: secondcolor,
                                      fontSize: 20,
                                      fontFamily: 'Sarala',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              EnrigAbsterminerBtn(),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Veuillez respecter la date du cour',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: secondcolor,
                        fontSize: 15,
                        fontFamily: 'Sarala',
                        fontWeight: FontWeight.w400,
                        height: 0,
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

  // ignore: non_constant_identifier_names
  Widget EnrigAbsterminerBtn() {
    return ElevatedButton(
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => NextPage()),
        // );
        print("hi");
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(double.infinity, 50),
        backgroundColor: greencolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.fact_check_outlined,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(width: 27),
              Text(
                'Enregistrement absence terminé',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'Sarala',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
