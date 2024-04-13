import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';

class Soal19 extends StatelessWidget {
  const Soal19({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.photo_library),
        title: const Text('Tugas 19'),
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
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 50,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://picsum.photos/id/${index + 200}/200/300",
                ),
                onError: (exception, stackTrace) {
                  // Handle image loading errors here
                },
              ),
              color: Colors.grey[300],
            ),
            child: FutureBuilder(
              future: precacheImage(
                NetworkImage(
                  "https://picsum.photos/id/${index + 200}/200/300",
                ),
                context,
              ),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LinearProgressIndicator();
                } else if (snapshot.hasError) {
                  return const Text('Error loading image');
                } else {
                  return Text(
                    "Photo ${index + 1}",
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  );
                }
              },
            ),
          ),
        ),
      ),
    );
  }

  void checkInternetConnectivity(Function showSnackBar) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      showSnackBar('No internet connection');
    }
  }
}
