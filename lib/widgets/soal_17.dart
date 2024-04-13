import "package:flutter/material.dart";

class Soal17 extends StatelessWidget {
  const Soal17({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.view_module),
          title: const Text('Tugas 17'),
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
        body: GridView.builder(
          itemCount: 50,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Container(
                  width: 150,
                  height: 150,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ));
            } else {
              return Container(
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ));
            }
          },
        ));
  }
}
