import 'package:estk_pfe/constant.dart';
import 'package:estk_pfe/pages/details_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:estk_pfe/widget/home_page.dart';

class CoursWidgetv2 extends StatefulWidget {
  const CoursWidgetv2({Key? key}) : super(key: key);

  @override
  State<CoursWidgetv2> createState() => _CoursWidgetv2State();
}

class _CoursWidgetv2State extends State<CoursWidgetv2> {
  late Future<List<Map<String, String>>> _fetchDataFuture;

  @override
  void initState() {
    super.initState();
    _fetchDataFuture = fetchData();
  }

  Future<List<Map<String, String>>> fetchData() async {
    // Simulate fetching data from a database
    //await Future.delayed(Duration(seconds: 1));

    // Return sample data as a map
    return [
      {
        'Module': '$_selectedModule',
        'Département': 'Informatiques et Mathematiques',
        'Filière': '$_selectedFiliere',
        'Niveau': '$_selectedNiveau',
        'Day': '$_selectedDay',
        'Time': '$_selectedTime',
      },
    ];
  }

  String? _selectedModule;
  String? _selectedFiliere;
  String? _selectedNiveau;
  String? _selectedDay;
  String? _selectedTime;

  final List<String> _moduleOptions = [
    'Développement mobile, Systèmes et applications répartis',
    'Ethernet',
  ];

  final List<String> _filiereOptions = [
    'Génie logiciel',
    'Génie des réseaux',
  ];

  final List<String> _niveauOptions = [
    'S4',
    'S2',
  ];

  final List<String> _dayOptions = [
    'Lundi',
    'Mardi',
    'Mercredi',
    'Jeudi',
    'Vendredi',
    'Samedi',
    'Dimanche',
  ];

  final List<String> _timeOptions = [
    '08:00 AM - 10:00 AM',
    '10:00 AM - 12:00 PM',
    '01:00 PM - 03:00 PM',
    '03:00 PM - 05:00 PM',
    '05:00 PM - 07:00 PM',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Votre cours',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Sarala',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      showBottomSheet(
                          backgroundColor: Colors.white,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(20),
                              child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    DropdownButton<String>(
                                      hint: Text(_selectedModule ?? 'Module'),
                                      value: _selectedModule,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedModule = value!;
                                        });
                                      },
                                      items: _moduleOptions
                                          .map((module) => DropdownMenuItem(
                                                value: module,
                                                child: Text(module),
                                              ))
                                          .toList(),
                                    ),
                                    const SizedBox(height: 10),
                                    DropdownButton<String>(
                                      hint: Text(_selectedFiliere ?? 'Filière'),
                                      value: _selectedFiliere,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedFiliere = value!;
                                        });
                                      },
                                      items: _filiereOptions
                                          .map((filiere) => DropdownMenuItem(
                                                value: filiere,
                                                child: Text(filiere),
                                              ))
                                          .toList(),
                                    ),
                                    const SizedBox(height: 10),
                                    DropdownButton<String>(
                                      hint: Text(_selectedNiveau ?? 'Niveau'),
                                      value: _selectedNiveau,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedNiveau = value!;
                                        });
                                      },
                                      items: _niveauOptions
                                          .map((niveau) => DropdownMenuItem(
                                                value: niveau,
                                                child: Text(niveau),
                                              ))
                                          .toList(),
                                    ),
                                    const SizedBox(height: 10),
                                    DropdownButton<String>(
                                      hint: Text(_selectedDay ?? 'Day'),
                                      value: _selectedDay,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedDay = value!;
                                        });
                                      },
                                      items: _dayOptions
                                          .map((day) => DropdownMenuItem(
                                                value: day,
                                                child: Text(day),
                                              ))
                                          .toList(),
                                    ),
                                    const SizedBox(height: 10),
                                    DropdownButton<String>(
                                      hint: Text(_selectedTime ?? 'Time'),
                                      value: _selectedTime,
                                      onChanged: (value) {
                                        setState(() {
                                          _selectedTime = value!;
                                        });
                                      },
                                      items: _timeOptions
                                          .map((time) => DropdownMenuItem(
                                                value: time,
                                                child: Text(time),
                                              ))
                                          .toList(),
                                    ),
                                    Text(
                                        'Module sélectionné: $_selectedModule'),
                                    Text(
                                        'Filière sélectionnée: $_selectedFiliere'),
                                    Text(
                                        'Niveau sélectionné: $_selectedNiveau'),
                                    Text('Jour sélectionné: $_selectedDay'),
                                    Text('Heure sélectionnée: $_selectedTime'),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () async {
                                            if (_selectedModule == null ||
                                                _selectedFiliere == null ||
                                                _selectedNiveau == null ||
                                                _selectedDay == null ||
                                                _selectedTime == null) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  backgroundColor: Colors.red,
                                                  content: Text(
                                                    'Veuillez remplir tous les champs',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              );
                                            } else {
                                              // Proceed with your logic here
                                              print('---------------------');
                                              print('Module: $_selectedModule');
                                              print(
                                                  'Filière: $_selectedFiliere');
                                              print('Niveau: $_selectedNiveau');
                                              print('Day: $_selectedDay');
                                              print('Time: $_selectedTime');
                                            }
                                            setSelectedCourse(
                                                '$_selectedModule',
                                                '$_selectedFiliere',
                                                '$_selectedNiveau',
                                                '$_selectedDay',
                                                '$_selectedTime');
                                            setSelected(
                                                '$_selectedModule',
                                                '$_selectedFiliere',
                                                '$_selectedNiveau',
                                                '$_selectedDay',
                                                '$_selectedTime');
                                          },
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.green),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(9.0),
                                                // Add border color here
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            'Cour Enregistrer',
                                            style: TextStyle(
                                                color:
                                                    Colors.white), // Text color
                                          ),
                                        ),
                                        ElevatedButton.icon(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pop(); // Close the bottom sheet // Close the bottom sheet
                                          },
                                          icon: Icon(Icons.close,
                                              color: Colors.white),
                                          label: Text(
                                            'Closet',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.red),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(
                                                    8.0), // Adjust the value as needed
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    icon: Icon(Icons.add_box, color: firstcolor, size: 36),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: FutureBuilder<List<Map<String, String>>>(
                future: _fetchDataFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    final List<Map<String, String>> data = snapshot.data!;
                    return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        final item = data[index];
                        return CourseListItem(
                          module: _selectedModule ?? '',
                          department: item['Département']!,
                          filiere: _selectedFiliere ?? '',
                          niveau: _selectedNiveau ?? '',
                          day: _selectedDay ?? '',
                          time: _selectedTime ?? '',
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseListItem extends StatelessWidget {
  final String module;
  final String department;
  final String filiere;
  final String niveau;
  final String day;
  final String time;

  const CourseListItem({
    required this.module,
    required this.department,
    required this.filiere,
    required this.niveau,
    required this.day,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: const Color(0xFFA5A9AC)),
          borderRadius: BorderRadius.circular(9),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      module,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: 'Sarala',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  PopupMenuButton<String>(
                    icon: Icon(
                      Icons.more_horiz_rounded,
                      color: secondcolor,
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
                        case 'Noter':
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Noter option selected'),
                          ));
                          break;
                        case 'détails':
                          Navigator.pushNamed(context, '/details');
                          break;
                        case 'modifier':
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Modifier option selected'),
                          ));
                          break;
                        case 'Supprimer':
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
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Département : ',
                      style: TextStyle(
                          color: firstcolor,
                          fontSize: 18,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: department,
                      style: TextStyle(
                          color: secondcolor,
                          fontSize: 18,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Filière : ',
                      style: TextStyle(
                          color: firstcolor,
                          fontSize: 18,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: filiere,
                      style: TextStyle(
                          color: secondcolor,
                          fontSize: 18,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Niveau : ',
                      style: TextStyle(
                          color: firstcolor,
                          fontSize: 18,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: niveau,
                      style: TextStyle(
                          color: secondcolor,
                          fontSize: 18,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Day : ',
                      style: TextStyle(
                          color: firstcolor,
                          fontSize: 18,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: day,
                      style: TextStyle(
                          color: secondcolor,
                          fontSize: 18,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Time : ',
                      style: TextStyle(
                          color: firstcolor,
                          fontSize: 18,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: time,
                      style: TextStyle(
                          color: secondcolor,
                          fontSize: 18,
                          fontFamily: 'Sarala',
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
