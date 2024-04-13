import 'package:flutter/material.dart';
import 'widgets/soal_1.dart';
import 'widgets/soal_2.dart';
import 'widgets/soal_3.dart';
import 'widgets/soal_4.dart';
import 'widgets/soal_5.dart';
import 'widgets/soal_6.dart';
import 'widgets/soal_7.dart';
import 'widgets/soal_8.dart';
import 'widgets/soal_9.dart';
import 'widgets/soal_10.dart';
import 'widgets/soal_11.dart';
import 'widgets/soal_12.dart';
import 'widgets/soal_13.dart';
import 'widgets/soal_14.dart';
import 'widgets/soal_15.dart';
import 'widgets/soal_16.dart';
import 'widgets/soal_17.dart';
import 'widgets/soal_19.dart';
// ... import other soal widgets

import 'other/about.dart';

void main() {
  runApp(const TugasHold());
}

class TugasHold extends StatelessWidget {
  const TugasHold({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgets = [
      const Soal1(),
      const Soal2(),
      const Soal3(),
      const Soal4(),
      const Soal5(),
      const Soal6(),
      const Soal7(),
      const Soal8(),
      const Soal9(),
      const Soal10(),
      const Soal11(),
      const Soal12(),
      const Soal13(),
      const Soal14(),
      const Soal15(),
      const Soal16(),
      const Soal17(),
      const Soal19(),
      // ... add other soal widgets
    ];

    final List<String> titles = [
      'Soal 1',
      'Soal 2',
      'Soal 3',
      'Soal 4',
      'Soal 5',
      'Soal 6',
      'Soal 7',
      'Soal 8',
      'Soal 9',
      'Soal 10',
      'Soal 11',
      'Soal 12',
      'Soal 13',
      'Soal 14',
      'Soal 15',
      'Soal 16',
      'Soal 17',
      'Soal 19',
      // ... add other soal titles
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ),
        // set AppBar theme
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            ),
          ),
          title: const Text('Tugas Abdul Vaiz'),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                child: Center(
                  child: Icon(Icons.home, size: 100),
                ),
              ),
              Builder(
                builder: (context) => Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.info),
                      title: const Text('About'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const About()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (context, index) => Column(
            children: [
              ListTile(
                leading: const Icon(Icons.question_answer), // Added icon
                title: Text(titles[index]), // Customize the title here
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => widgets[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
