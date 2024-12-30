import 'package:flutter/material.dart';

class Themeswitcher extends StatefulWidget {
  const Themeswitcher({super.key});

  @override
  State<Themeswitcher> createState() => _ThemeswitcherState();
}

class _ThemeswitcherState extends State<Themeswitcher> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("App Theme Mode"),
          Row(
            children: [
              Switch(
                  value: isChecked,
                  onChanged: (value) {
                    isChecked = value;
                    setState(() {});
                  }),
              SizedBox(
                width: 30,
              ),
              Text(isChecked ? "Dark Mode" : "Light Mode")
            ],
          )
        ],
      ),
    );
  }
}
