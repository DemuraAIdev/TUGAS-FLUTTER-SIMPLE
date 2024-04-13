import "package:flutter/material.dart";

class Soal5 extends StatelessWidget {
  const Soal5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.rectangle_outlined),
          title: const Text('Tugas 5'),
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
        body: Center(
            child: Container(
                color: Colors.blue,
                width: 250,
                height: 250,
                child: const Center(
                    child: Text(
                  "Tugas 5",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                )))));
  }
}
