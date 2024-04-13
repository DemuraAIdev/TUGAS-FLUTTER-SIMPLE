import 'package:flutter/material.dart';

class Soal1 extends StatefulWidget {
  const Soal1({super.key});

  @override
  Soal1State createState() => Soal1State();
}

class Soal1State extends State<Soal1> {
  final TextEditingController _textController = TextEditingController();
  String _displayText = 'Hello World!'; // Initial text

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  void _updateText() {
    setState(() {
      _displayText =
          _textController.text.isEmpty ? 'Hello World!' : _textController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.title),
        title: const Text('Tugas 1'),
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
        child: Text(
          _displayText,
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Edit Text'),
                content: TextField(
                  controller: _textController,
                  decoration: const InputDecoration(hintText: 'Enter text'),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      _updateText();
                      Navigator.of(context).pop();
                    },
                    child: const Text('Save'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.edit),
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

void main() {
  runApp(const MaterialApp(home: Soal1()));
}
