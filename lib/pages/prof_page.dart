import 'package:estk_pfe/constant.dart';
import 'package:estk_pfe/widget/complexe_drawer_version_deux.dart';
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
                          Icon(
                            Icons.more_horiz_rounded,
                            color: secondcolor,
                          )
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
                                    ' Développement mobile, Systèmes et applications répartis',
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
                                text: ' Génie logiciel S4',
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
    ),
    Container(
      color: Colors.deepOrange.shade100,
      alignment: Alignment.center,
      child: const Text(
        'Cours',
        style: TextStyle(fontSize: 40),
      ),
    ),
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
              labelType: NavigationRailLabelType
                  .selected, // Set background color to white
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.home_outlined),
                  ),
                  label: Text('Accueil'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.av_timer),
                  ),
                  label: Text('Consultez les emplois'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.school_outlined),
                  ),
                  label: Text('Consultez les cours'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.people_alt),
                  ),
                  label: Text('Consultee les classes'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.connect_without_contact),
                  ),
                  label: Text('Contacter fonctionner'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.settings),
                  ),
                  label: Text('Paramètre'),
                ),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Icon(Icons.logout),
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
