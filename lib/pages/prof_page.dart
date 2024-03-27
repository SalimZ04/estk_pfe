import 'package:estk_pfe/constant.dart';
import 'package:estk_pfe/widget/complexe_drawer_version_deux.dart';
import 'package:estk_pfe/widget/cours_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfPage extends StatefulWidget {
  const ProfPage({Key? key}) : super(key: key);

  @override
  State<ProfPage> createState() => _HomePageState();
}

class _HomePageState extends State<ProfPage> {
  final List<Widget> _screens = [
    Container(
      color: Colors.deepOrange.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Cours',
        style: TextStyle(fontSize: 40),
      ),
    ),
    const CoursWidget(),
    Container(
      color: Colors.blue.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Consultation',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Agenda',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Agenda',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Agenda',
        style: TextStyle(fontSize: 40),
      ),
    ),
    Container(
      color: Colors.red.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Agenda',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logoestk_digital.svg',
          height: 40,
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_pin,
                color: firstcolor,
                size: 40,
              ))
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  'assets/images/menulogo.svg',
                  fit: BoxFit.contain,
                  height: 10,
                ),
              ),
            );
          },
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Divider(
            color: secondGreycolor,
            height: 1.0,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: const ComplexeDrawerv2(),
      body: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: secondGreycolor, // Set the color of the right border
                  width: 1.0, // Set the width of the right border
                ),
              ),
            ),
            child: NavigationRail(
              groupAlignment: 0.0,
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              selectedIconTheme: IconThemeData(color: firstcolor),
              backgroundColor: Colors.white,
              labelType:
                  NavigationRailLabelType.none, // Set background color to white
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Icon(
                      Icons.home_outlined,
                      size: 30,
                    ),
                  ),
                  label: Text('Accueil'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Icon(
                      Icons.av_timer,
                      size: 30,
                    ),
                  ),
                  label: Text('Consultez les emplois'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Icon(
                      Icons.school_outlined,
                      size: 30,
                    ),
                  ),
                  label: Text('Consultez les cours'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Icon(
                      Icons.people_alt,
                      size: 30,
                    ),
                  ),
                  label: Text('Consultee les classes'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Icon(
                      Icons.connect_without_contact,
                      size: 30,
                    ),
                  ),
                  label: Text('Contacter fonctionner'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Icon(
                      Icons.settings,
                      size: 30,
                    ),
                  ),
                  label: Text('Paramètre'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Icon(
                      Icons.logout,
                      size: 30,
                    ),
                  ),
                  label: Text('Log out'),
                ),
              ],
              useIndicator: false,
              unselectedIconTheme: IconThemeData(color: secondcolor),
              selectedLabelTextStyle: TextStyle(color: firstcolor),
              trailing: null,
            ),
          ),
          Expanded(
            child: _screens[_selectedIndex],
          ),
        ],
      ),
    );
  }
}
