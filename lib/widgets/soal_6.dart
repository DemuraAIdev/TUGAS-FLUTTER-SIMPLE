import "package:flutter/material.dart";

class Soal6 extends StatelessWidget {
  const Soal6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.circle_outlined),
          title: const Text('Tugas 6'),
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
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(250),
                ),
                child: const Center(
                    child: Text(
                  "Tugas 6",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                )))));
  }
}
