import 'package:flutter/material.dart';

class CrudPage extends StatefulWidget {
  @override
  _CrudPageState createState() => _CrudPageState();
}

class _CrudPageState extends State<CrudPage> {
  List<Map<String, String?>> data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vos Cours'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(data[index]['Module']!),
            subtitle: Text(data[index]['Département']!),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    _navigateAndEditData(context, index);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      data.removeAt(index);
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateAndAddData(context);
        },
        tooltip: 'Ajoutez Vos cours',
        child: Icon(Icons.add),
      ),
    );
  }

  void _navigateAndEditData(BuildContext context, int index) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditDataPage(data[index])),
    );

    if (result != null) {
      setState(() {
        data[index] = result;
      });
    }
  }

  void _navigateAndAddData(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddDataPage()),
    );

    if (result != null) {
      setState(() {
        data.add(result);
      });
    }
  }
}

class AddDataPage extends StatefulWidget {
  @override
  _AddDataPageState createState() => _AddDataPageState();
}

class _AddDataPageState extends State<AddDataPage> {
  final _formKey = GlobalKey<FormState>();

  String? _selectedModule;
  String? _selectedFiliere;
  String? _selectedNiveau;
  String? _selectedDay;
  String? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajoutez vos cours'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DropdownButtonFormField<String>(
                value: _selectedModule,
                onChanged: (value) {
                  setState(() {
                    _selectedModule = value;
                  });
                },
                items: _moduleOptions
                    .map((module) => DropdownMenuItem(
                          value: module,
                          child: Text(module),
                        ))
                    .toList(),
                decoration: InputDecoration(labelText: 'Module'),
                validator: (value) =>
                    value == null ? 'Please select a module' : null,
              ),
              DropdownButtonFormField<String>(
                value: _selectedFiliere,
                onChanged: (value) {
                  setState(() {
                    _selectedFiliere = value;
                  });
                },
                items: _filiereOptions
                    .map((filiere) => DropdownMenuItem(
                          value: filiere,
                          child: Text(filiere),
                        ))
                    .toList(),
                decoration: InputDecoration(labelText: 'Filière'),
                validator: (value) =>
                    value == null ? 'Please select a filière' : null,
              ),
              DropdownButtonFormField<String>(
                value: _selectedNiveau,
                onChanged: (value) {
                  setState(() {
                    _selectedNiveau = value;
                  });
                },
                items: _niveauOptions
                    .map((niveau) => DropdownMenuItem(
                          value: niveau,
                          child: Text(niveau),
                        ))
                    .toList(),
                decoration: InputDecoration(labelText: 'Niveau'),
                validator: (value) =>
                    value == null ? 'Please select a niveau' : null,
              ),
              DropdownButtonFormField<String>(
                value: _selectedDay,
                onChanged: (value) {
                  setState(() {
                    _selectedDay = value;
                  });
                },
                items: _dayOptions
                    .map((day) => DropdownMenuItem(
                          value: day,
                          child: Text(day),
                        ))
                    .toList(),
                decoration: InputDecoration(labelText: 'Day'),
                validator: (value) =>
                    value == null ? 'Please select a day' : null,
              ),
              DropdownButtonFormField<String>(
                value: _selectedTime,
                onChanged: (value) {
                  setState(() {
                    _selectedTime = value;
                  });
                },
                items: _timeOptions
                    .map((time) => DropdownMenuItem(
                          value: time,
                          child: Text(time),
                        ))
                    .toList(),
                decoration: InputDecoration(labelText: 'Time'),
                validator: (value) =>
                    value == null ? 'Please select a time' : null,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pop(context, {
                        'Module': _selectedModule,
                        'Département': 'Informatiques et Mathematiques',
                        'Filière': _selectedFiliere,
                        'Niveau': _selectedNiveau,
                        'Day': _selectedDay,
                        'Time': _selectedTime,
                      });
                    }
                  },
                  child: Text('Enregistrer '),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EditDataPage extends StatefulWidget {
  final Map<String, String?> item;

  EditDataPage(this.item);

  @override
  _EditDataPageState createState() => _EditDataPageState();
}

class _EditDataPageState extends State<EditDataPage> {
  final _formKey = GlobalKey<FormState>();

  late String _selectedModule;
  late String _selectedFiliere;
  late String _selectedNiveau;
  late String _selectedDay;
  late String _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedModule = widget.item['Module']!;
    _selectedFiliere = widget.item['Filière']!;
    _selectedNiveau = widget.item['Niveau']!;
    _selectedDay = widget.item['Day']!;
    _selectedTime = widget.item['Time']!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modifier vos cours'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DropdownButtonFormField<String>(
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
                decoration: InputDecoration(labelText: 'Module'),
                validator: (value) =>
                    value == null ? 'Please select a module' : null,
              ),
              DropdownButtonFormField<String>(
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
                decoration: InputDecoration(labelText: 'Filière'),
                validator: (value) =>
                    value == null ? 'Please select a filière' : null,
              ),
              DropdownButtonFormField<String>(
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
                decoration: InputDecoration(labelText: 'Niveau'),
                validator: (value) =>
                    value == null ? 'Please select a niveau' : null,
              ),
              DropdownButtonFormField<String>(
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
                decoration: InputDecoration(labelText: 'Day'),
                validator: (value) =>
                    value == null ? 'Please select a day' : null,
              ),
              DropdownButtonFormField<String>(
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
                decoration: InputDecoration(labelText: 'Time'),
                validator: (value) =>
                    value == null ? 'Please select a time' : null,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pop(context, {
                        'Module': _selectedModule,
                        'Département': 'Informatiques et Mathematiques',
                        'Filière': _selectedFiliere,
                        'Niveau': _selectedNiveau,
                        'Day': _selectedDay,
                        'Time': _selectedTime,
                      });
                    }
                  },
                  child: Text('Enregistrer'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
