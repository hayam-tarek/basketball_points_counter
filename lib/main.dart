import 'package:flutter/material.dart';

void main() {
  runApp(const PointCounter());
}

class PointCounter extends StatefulWidget {
  const PointCounter({super.key});
  @override
  State<PointCounter> createState() => _PointCounterState();
}

class _PointCounterState extends State<PointCounter> {
  int teamAScore = 0;
  int teamBScore = 0;
  bool teamAWon = false;
  bool teamBWon = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: "superFont"),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Points Counter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "KodeMono",
                        ),
                      ),
                      Text(
                        "$teamAScore",
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (teamAScore < 50) teamAScore++;
                            if (teamAScore == 50 && !teamBWon) teamAWon = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 40),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Add 1 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (teamAScore < 49) teamAScore += 2;
                            if (teamAScore == 50 && !teamBWon) teamAWon = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 40),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Add 2 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (teamAScore < 48) teamAScore += 3;
                            if (teamAScore == 50 && !teamBWon) teamAWon = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 40),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Add 3 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                    ],
                  ),
                  Container(
                    width: 1,
                    height: 450,
                    color: Colors.black38,
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: "KodeMono",
                        ),
                      ),
                      Text(
                        "$teamBScore",
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (teamBScore < 50) teamBScore++;
                            if (teamBScore == 50 && !teamAWon) teamBWon = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 40),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Add 1 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (teamBScore < 49) teamBScore += 2;
                            if (teamBScore == 50 && !teamAWon) teamBWon = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 40),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Add 2 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (teamBScore < 48) teamBScore += 3;
                            if (teamBScore == 50 && !teamAWon) teamBWon = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(150, 40),
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Add 3 point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        height: 20,
                      ),
                    ],
                  ),
                ],
              ),
              if (teamAWon || teamBWon)
                Text(
                  "🎉 Team ${teamAWon ? 'A' : 'B'} won! 🎉",
                  style: const TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontFamily: "KodeMono",
                      fontWeight: FontWeight.w700),
                ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamAScore = 0;
                    teamBScore = 0;
                    teamAWon = false;
                    teamBWon = false;
                  });
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 40),
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
