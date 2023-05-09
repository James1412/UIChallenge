import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final List<int> days = [17, 18, 19, 20, 21, 22, 23];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F1F1F),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    child: Text("HI"),
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "MONDAY 16",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Calendar(
                    text: "TODAY",
                    textColor: Colors.white,
                  ),
                  const Icon(
                    Icons.circle,
                    color: Color(0xFFA4337D),
                    size: 12,
                  ),
                  for (var day in days)
                    Calendar(
                      text: "$day",
                      textColor: Colors.white.withOpacity(0.5),
                    )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
                child: SingleChildScrollView(
              child: Column(children: [
                Card(
                  hour1: "11",
                  minute1: "30",
                  hour2: "12",
                  minute2: "20",
                  title: "DESIGN\nMEETING",
                  color: const Color(0xFFFDF771),
                  names: [
                    Text(
                      "ALEX",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "HELENA",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "NANA",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  hour1: "12",
                  minute1: "35",
                  hour2: "14",
                  minute2: "10",
                  title: "DAILY\nPROJECT",
                  color: const Color(0xFF956DC8),
                  names: [
                    const Text(
                      "ME",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "RICARD",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "CIRY",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "+4",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  hour1: "15",
                  minute1: "00",
                  hour2: "16",
                  minute2: "30",
                  title: "WEEKLY\nPLANNING",
                  color: const Color(0xFFC6ED67),
                  names: [
                    Text(
                      "DEN",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "NANA",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "MARK",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  hour1: "11",
                  minute1: "30",
                  hour2: "12",
                  minute2: "20",
                  title: "DESIGN\nMEETING",
                  color: const Color(0xFFFDF771),
                  names: [
                    Text(
                      "ALEX",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "HELENA",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      "NANA",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ]),
            ))
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String hour1, minute1, hour2, minute2, title;
  final Color color;
  final List<Widget> names;
  const Card({
    super.key,
    required this.hour1,
    required this.minute1,
    required this.hour2,
    required this.minute2,
    required this.title,
    required this.names,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    hour1,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    minute1,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                    child: VerticalDivider(
                      color: Colors.black,
                      thickness: 1.1,
                    ),
                  ),
                  Text(
                    hour2,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    minute2,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      height: 0.9,
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: names,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Calendar extends StatelessWidget {
  final String text;
  final Color textColor;

  const Calendar({super.key, required this.text, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: 35, fontWeight: FontWeight.w500),
      ),
    );
  }
}
