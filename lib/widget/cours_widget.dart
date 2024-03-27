import 'package:flutter/material.dart';

class CoursWidget extends StatefulWidget {
  const CoursWidget({Key? key}) : super(key: key);

  @override
  State<CoursWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CoursWidget> {
  Future<List<Map<String, String>>> fetchData() async {
    // Simulate fetching data from a database
    // await Future.delayed(Duration(seconds: 1));

    // Return sample data as a map
    return [
      {
        'Département': 'Génie de l’informatique et mathématiques',
        'Module': 'Développement mobile, Systèmes et applications répartis',
        'Filière': 'Génie logiciel',
        'Niveau': 'S4',
      },
      {
        'Département': 'Génie de l’informatique et mathématiques',
        'Module': 'Ethernet',
        'Filière': 'Gestion des résaux',
        'Niveau': 'S2',
      },
    ];
  }

  String? _selectedModule;
  String? _selectedFiliere;
  String? _selectedNiveau;

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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, String>>>(
      future: fetchData(),
      builder: (context, AsyncSnapshot<List<Map<String, String>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          // Extract the data from the snapshot
          final data = snapshot.data!.first;
          _selectedModule = data['Module'];
          _selectedFiliere = data['Filière'];
          _selectedNiveau = data['Niveau'];

          return Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            data['Département']!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Sarala',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          PopupMenuButton<String>(
                            color: Colors.white,
                            icon: Icon(
                              Icons.more_horiz_rounded,
                              color: Colors.black,
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
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Delete option selected'),
                                  ));
                                  break;
                                case 'détails':
                                  Navigator.pushNamed(context, '/details');
                                  break;
                                case 'modifier':
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text('Modify option selected'),
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
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: Color(0xFFA5A9AC),
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () async {
                              final dataToSave = {
                                'Module': _selectedModule,
                                'Filière': _selectedFiliere,
                                'Niveau': _selectedNiveau,
                              };
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text('Enregistrer'),
                              ));
                            },
                            child: const Text('Cour Enregistrer'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
