import 'package:flutter/material.dart';
import 'package:funfacts/Screens/settings_screen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  List<String> facts = [
    "Bananas are berries, but strawberries are not.",
    "An octopus has three hearts and blue blood.",
    "Honey never spoils; it can last for thousands of years.",
    "There are more stars in the universe than grains of sand on Earth.",
    "Wombat poop is cube-shaped to prevent it from rolling away.",
    "Sloths only defecate about once a week.",
    "The dot over the letter 'i' is called a tittle.",
    "A group of flamingos is called a flamboyance.",
    "Sharks existed before trees; they’ve been around for over 400 million years.",
    "You can't hum while holding your nose closed.",
    "Sea otters hold hands while they sleep to keep from drifting apart.",
    "Cows have best friends and get stressed when separated.",
    "Water can boil and freeze at the same time, a phenomenon called the triple point.",
    "A day on Venus is longer than a year on Venus.",
    "The Eiffel Tower can grow over 6 inches taller during summer.",
    "Octopuses can taste with their arms.",
    "A shrimp’s heart is located in its head.",
    "Elephants are the only animals that can’t jump.",
    "A cloud can weigh more than a million pounds.",
    "Pineapples take about two years to grow."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fun Facts"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SettingsScreen();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.settings),
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: facts.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                          child: Text(
                        textAlign: TextAlign.center,
                        facts[index],
                        style: TextStyle(fontSize: 35),
                      )));
                }),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Swipe Left for more"),
            ),
          )
        ],
      ),
    );
  }
}
