import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: GoogleFonts.robotoCondensed().fontFamily,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        if (title == 'Meals') {
          Navigator.of(context).pushReplacementNamed('/');
        }
        if (title == 'Filters') {
          Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.yellowAccent,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Meals', Icons.restaurant, context),
          buildListTile('Filters', Icons.settings, context),
        ],
      ),
    );
  }
}
