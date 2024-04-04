import 'package:estk_pfe/constant.dart';
import 'package:estk_pfe/pages/noter_absence.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: SvgPicture.asset(
            'assets/images/logoestk_digital.svg',
            height: 40,
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 17),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Détails de la cour',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      NoterAbsenceBtn(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 11, vertical: 17),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFA5A9AD)),
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Module  ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: firstcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: secondcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Département ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: firstcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: secondcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Filière ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: firstcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: secondcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Niveau ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: firstcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: secondcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total des étudiants ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: firstcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              '',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: secondcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Date du cour',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: firstcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: secondcolor,
                                    fontSize: 18,
                                    fontFamily: 'Sarala',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 26),
                                Text(
                                  '',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: secondcolor,
                                    fontSize: 18,
                                    fontFamily: 'Sarala',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Element ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: firstcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: secondcolor,
                                fontSize: 18,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'La liste des Étudiants',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add_box,
                                  color: firstcolor, size: 36))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }

  // ignore: non_constant_identifier_names
  Widget NoterAbsenceBtn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NoterAbsPages()),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        backgroundColor: firstcolor,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.note_alt_outlined,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          Text(
            'Notez absence',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Sarala',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
