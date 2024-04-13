import "package:flutter/material.dart";

class Soal16 extends StatelessWidget {
  const Soal16({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.grid_view),
        title: const Text(
          'Tugas 16',
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("click more");
            },
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add this line (1/2
            Container(
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add this line (1/2
            Container(
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add this line (1/2
            Container(
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
