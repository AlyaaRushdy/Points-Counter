import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  int teamACounter = 0, teamBCounter = 0;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Points Counter"),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Team A",
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                  Text(
                    widget.teamACounter.toString(),
                    style: const TextStyle(color: Colors.black, fontSize: 60),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomButton(
                      text: "Add 1 Point",
                      OnPressed: () {
                        setState(() {
                          widget.teamACounter += 1;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomButton(
                      text: "Add 2 Point",
                      OnPressed: () {
                        setState(() {
                          widget.teamACounter += 2;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomButton(
                      text: "Add 3 Point",
                      OnPressed: () {
                        setState(() {
                          widget.teamACounter += 3;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const VerticalDivider(
                color: Color.fromARGB(255, 153, 52, 52),
                width: 20,
                thickness: 120,
                indent: 10,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Team B",
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                  Text(
                    widget.teamBCounter.toString(),
                    style: const TextStyle(color: Colors.black, fontSize: 60),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomButton(
                      text: "Add 1 Point",
                      OnPressed: () {
                        setState(() {
                          widget.teamBCounter += 1;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomButton(
                      text: "Add 2 Point",
                      OnPressed: () {
                        setState(() {
                          widget.teamBCounter += 2;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CustomButton(
                      text: "Add 3 Point",
                      OnPressed: () {
                        setState(() {
                          widget.teamBCounter += 3;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomButton(
            text: "Reset",
            OnPressed: () {
              setState(() {
                widget.teamACounter = 0;
                widget.teamBCounter = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.OnPressed,
  });

  final String text;
  final Function OnPressed;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Colors.orange),
        foregroundColor: const MaterialStatePropertyAll(Colors.black),
        shape: MaterialStateProperty.all(const BeveledRectangleBorder()),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        ),
      ),
      onPressed: () {
        setState(() {
          widget.OnPressed();
        });
      },
      child: Text(
        widget.text,
        style: const TextStyle(fontSize: 22),
      ),
    );
  }
}
