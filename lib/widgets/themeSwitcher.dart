import 'package:flutter/material.dart';
import 'package:funfacts/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class Themeswitcher extends StatefulWidget {
  const Themeswitcher({super.key});

  @override
  State<Themeswitcher> createState() => _ThemeswitcherState();
}

class _ThemeswitcherState extends State<Themeswitcher> {
  @override
  Widget build(BuildContext context) {
    var themeprovider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Theme Mode",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Switch(
                  value: themeprovider.isDarkModeChecked,
                  onChanged: (value) {
                    themeprovider.updateMode(darkmode: value);
                  }),
              SizedBox(
                width: 30,
              ),
              Text(themeprovider.isDarkModeChecked ? "Dark Mode" : "Light Mode")
            ],
          )
        ],
      ),
    );
  }
}
