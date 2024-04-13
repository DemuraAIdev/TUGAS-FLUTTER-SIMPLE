import "package:flutter/material.dart";

class Soal3 extends StatelessWidget {
  const Soal3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.image),
          title: const Text('Tugas 3'),
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
        body: const Center(
          child: FlutterLogo(size: 200),
        ));
  }
}
