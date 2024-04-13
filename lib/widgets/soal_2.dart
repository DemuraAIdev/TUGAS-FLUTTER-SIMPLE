import "package:flutter/material.dart";

class Soal2 extends StatefulWidget {
  const Soal2({super.key});
  @override
  Soal2State createState() => Soal2State();
}

class Soal2State extends State<Soal2> {
  bool isBold = true;
  bool isItalic = true;
  bool isUnderline = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.text_format),
        title: const Text('Tugas 2'),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("click more");
            },
            icon: const Icon(Icons.more_vert),
          )
        ],
      ),
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
                IconButton(
                  onPressed: () {
                    setState(() {
                      isBold = !isBold;
                    });
                  },
                  icon: Icon(
                    Icons.format_bold,
                    color: isBold ? Theme.of(context).primaryColor : null,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isItalic = !isItalic;
                    });
                  },
                  icon: Icon(
                    Icons.format_italic,
                    color: isItalic ? Theme.of(context).primaryColor : null,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isUnderline = !isUnderline;
                    });
                  },
                  icon: Icon(
                    Icons.format_underline,
                    color: isUnderline ? Theme.of(context).primaryColor : null,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            fontSize: 30,
            fontWeight: isBold ? FontWeight.bold : null,
            fontStyle: isItalic ? FontStyle.italic : null,
            decoration: isUnderline ? TextDecoration.underline : null,
          ),
        ),
      ),
    );
  }
}
