import "package:flutter/material.dart";
import "dart:math";

class Soal4 extends StatefulWidget {
  const Soal4({super.key});

  @override
  Soal4State createState() => Soal4State();
}

class Soal4State extends State<Soal4> {
  double _rotationAngle = 90;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.refresh),
        title: const Text('Tugas 4'),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("click more");
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Transform.rotate(
          angle: _rotationAngle * (pi / 180),
          child: const FlutterLogo(
            size: 200,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _rotationAngle += 90;
          });
        },
        child: const Icon(Icons.rotate_90_degrees_ccw),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Stack(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
