import 'package:estk_pfe/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ComplexeDrawerv2 extends StatefulWidget {
  const ComplexeDrawerv2({Key? key}) : super(key: key);

  @override
  State<ComplexeDrawerv2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ComplexeDrawerv2> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.white,
      child: ListView(
        children: [
          controllTile(),
          SizedBox(height: 20),
          blackIconTiles(),
        ],
      ),
    );
  }

  Widget blackIconTiles() {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: cmds.length,
        itemBuilder: (context, index) {
          CDM cdm = cmds[index];
          bool selected = selectedIndex == index;

          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ExpansionTile(
              onExpansionChanged: (z) {
                setState(() {
                  selectedIndex = z ? index : -1;
                });
              },
              leading: Icon(cdm.icons, color: firstcolor),
              title: Text(
                cdm.title,
                style: TextStyle(
                  color: firstcolor,
                ),
              ),
              trailing: cdm.submenus.isEmpty
                  ? const SizedBox(width: 0)
                  : Icon(
                      selected
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: firstcolor,
                    ),
              children: cdm.submenus.map((submenu) {
                return sMenuButton(submenu, false);
              }).toList(),
            ),
          );
        },
      ),
    );
  }

  Widget sMenuButton(String subMenu, bool istitle) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          subMenu,
          textAlign: TextAlign.start,
          style: TextStyle(
            color: istitle ? firstcolor : Colors.grey,
            fontSize: istitle ? 17 : 15,
          ),
        ),
      ),
    );
  }

  Widget controllTile() {
    return ListTile(
      title: SvgPicture.asset(
        'assets/images/logoestk_digital.svg',
        height: 20,
      ),
      leading: Builder(
        builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).closeDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                'assets/images/menulogo.svg',
                fit: BoxFit.contain,
              ),
            ),
          );
        },
      ),
    );
  }

  static List<CDM> cmds = [
    CDM(Icons.home_filled, "Accueil", []),
    CDM(Icons.people_alt, "Consultation", ["Profs", "Etudiante", "Absece"]),
    CDM(Icons.post_add, "Annonce une publicité", []),
    CDM(Icons.ssid_chart_sharp, "Statistique",
        ["Profs", "Etudiante", "Absece"]),
    CDM(Icons.connect_without_contact, "Contacter fonctionner", []),
    CDM(Icons.settings, "Paramètre", []),
    CDM(Icons.logout, "Log out", []),
  ];
}

class CDM {
  final IconData icons;
  final String title;
  final List<String> submenus;

  CDM(this.icons, this.title, this.submenus);
}
