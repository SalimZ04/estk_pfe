import 'package:estk_pfe/constant.dart';
import 'package:flutter/material.dart';

class CoursWidget extends StatefulWidget {
  const CoursWidget({super.key});

  @override
  State<CoursWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CoursWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Votre cours',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Sarala',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Icon(Icons.add_box, color: firstcolor, size: 36)
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFA5A9AC)),
                    borderRadius: BorderRadius.circular(9),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: Text(
                              'Développement mobile',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontFamily: 'Sarala',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          PopupMenuButton<String>(
                            color: Colors.white,
                            icon: Icon(
                              Icons.more_horiz_rounded,
                              color:
                                  secondcolor, // Customize the color as needed
                            ),
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<String>>[
                              const PopupMenuItem<String>(
                                value: 'Noter',
                                child: Text('Noter absence'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'détails',
                                child: Text('Détails'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'modifier',
                                child: Text('Modifier'),
                              ),
                              const PopupMenuItem<String>(
                                value: 'Supprimer',
                                child: Text('Supprimer'),
                              ),
                            ],
                            onSelected: (String value) {
                              switch (value) {
                                case 'delete':
                                  // Handle delete action
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Delete option selected'),
                                  ));
                                  break;
                                case 'détails':
                                  // Handle details action
                                  Navigator.pushNamed(context, '/details');
                                  break;
                                case 'modifier':
                                  // Handle modify action
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Modify option selected'),
                                  ));
                                  break;
                                case 'Supprimer':
                                  // Handle delete action
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Supprimer option selected'),
                                  ));
                                  break;
                                default:
                                  break;
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Département :',
                                style: TextStyle(
                                  color: Color(0xFFFCA129),
                                  fontSize: 18,
                                  fontFamily: 'Sarala',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' Génie de l’informatique et mathématiques',
                                style: TextStyle(
                                  color: Color(0xFF788590),
                                  fontSize: 18,
                                  fontFamily: 'Sarala',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Module :',
                                style: TextStyle(
                                  color: Color(0xFFFCA129),
                                  fontSize: 18,
                                  fontFamily: 'Sarala',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Développement mobile, Systèmes et applications répartis',
                                style: TextStyle(
                                  color: Color(0xFF788590),
                                  fontSize: 18,
                                  fontFamily: 'Sarala',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Filière :',
                                style: TextStyle(
                                  color: Color(0xFFFCA129),
                                  fontSize: 18,
                                  fontFamily: 'Sarala',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: ' Génie logiciel',
                                style: TextStyle(
                                  color: Color(0xFF788590),
                                  fontSize: 18,
                                  fontFamily: 'Sarala',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Niveau :',
                                style: TextStyle(
                                  color: Color(0xFFFCA129),
                                  fontSize: 18,
                                  fontFamily: 'Sarala',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: 'S4',
                                style: TextStyle(
                                  color: Color(0xFF788590),
                                  fontSize: 18,
                                  fontFamily: 'Sarala',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
