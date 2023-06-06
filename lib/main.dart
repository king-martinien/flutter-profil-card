import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: KingCard(),
  ));
}

class KingCard extends StatefulWidget {
  const KingCard({super.key});

  @override
  State<KingCard> createState() => _KingCardState();
}

class _KingCardState extends State<KingCard> {
  int currentLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(39, 39, 39, 1),
      appBar: AppBar(
        title: const Text(
          "King ID Card",
          style: TextStyle(fontFamily: "DM Sans"),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(22, 22, 22, 1),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(22, 22, 22, 1),
                backgroundImage: AssetImage("assets/images/king.jpg"),
                radius: 80,
              ),
            ),
            Divider(
              height: 40,
              color: Color.fromRGBO(153, 153, 153, .5),
            ),
            SizedBox(height: 10),
            Text(
              "NAME",
              style: TextStyle(
                  color: Color.fromRGBO(153, 153, 153, 1),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM Sans',
                  letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              "Martinien FOKOUE",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 28,
                  fontFamily: "DM Sans",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2),
            ),
            SizedBox(height: 20),
            Text(
              "CURRENT LEVEL",
              style: TextStyle(
                  color: Color.fromRGBO(153, 153, 153, 1),
                  fontWeight: FontWeight.w700,
                  fontFamily: 'DM Sans',
                  letterSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              "$currentLevel",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 28,
                  fontFamily: "DM Sans",
                  fontWeight: FontWeight.w700,
                  letterSpacing: 2),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "martinienfokoue@gmail.com",
                  style: TextStyle(
                      fontSize: 18, fontFamily: "DM Sans", color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentLevel += 1;
          });
        },
        backgroundColor: const Color.fromRGBO(22, 22, 22, 1),
        child: const Icon(Icons.add),
      ),
    );
  }
}
