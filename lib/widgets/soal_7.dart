import "package:flutter/material.dart";

class Soal7 extends StatelessWidget {
  const Soal7({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.grid_view),
          title: const Text('Tugas 7'),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint("click more");
                },
                icon: const Icon(Icons.more_vert))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        body: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )),
          const SizedBox(width: 20),
          Container(
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              )),
        ]));
  }
}
