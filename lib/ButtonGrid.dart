import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final String label;
  final IconData icon;

  const GridButton({super.key, required this.label, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton.filled(
          iconSize: 30.0,
          padding: const EdgeInsets.all(15),
          onPressed: () {
            print('Navigating');
          },
          icon: Icon(icon),
        ),
        Spacer(),
        Text(label)
      ],
    );
  }
}

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              "User",
              style: TextStyle(
                fontSize: 25
              ),
            ),
          ),
          GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 120,
            crossAxisSpacing: 30,
            padding: EdgeInsets.all(20),
            shrinkWrap: true,
            children: <Widget>[
              GridButton(label: "Komens", icon: Icons.comment),
              GridButton(label: "Absence", icon: Icons.person),
              GridButton(label: "Marks", icon: Icons.looks_one_sharp),
              GridButton(label: "Semester", icon: Icons.access_alarm),
              GridButton(label: "Timetable", icon: Icons.calendar_today),
              GridButton(label: "Substitution", icon: Icons.person_off),
              GridButton(label: "Subject", icon: Icons.subject),
              GridButton(label: "Teaching", icon: Icons.my_library_books),
              GridButton(label: "Homework", icon: Icons.home_work),
            ],
          ),
        ],
      ),
    );
  }
}