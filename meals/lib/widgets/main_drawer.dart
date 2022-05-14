import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals/screens/filters_screen.dart';
import 'package:meals/screens/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

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
            fontWeight: FontWeight.bold),
      ),
      onTap: () {
        if (title == 'Meals') {
          Navigator.pushReplacementNamed(context, TabsScreen.routeName);
        } else {
          Navigator.pushReplacementNamed(context, FilterScreen.routeName);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.yellow,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          SizedBox(height: 20),
          buildListTile(
            'Meals',
            Icons.restaurant,
            context,
          ),
          buildListTile(
            'Filters',
            Icons.settings,
            context,
          ),
        ],
      ),
    );
  }
}
