import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 1',
      home: const CounterPage(),
      //home: Scaffold(
      //appBar: AppBar(
      //title: const Text('Hello Flutter'),
      // ),
      // Bagian body yang baru (Bagian E)
      // body: Center(
      // child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // children: const [
      // Icon(Icons.flutter_dash,
      // size: 100, color: Color.fromARGB(255, 236, 50, 13)),
      // SizedBox(height: 20),
      // Text(
      // 'Halo, nama saya Tupen!', // Ganti dengan nama kamu
      // style: TextStyle(fontSize: 24),
      // ),
      // Text('NIM: 20240801049'), // Ganti dengan NIM kamu
      // ],
      // ),
      // ),
      // ),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Praktikum Pertemuan 1',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 236, 14, 14),
      ),
      body: Center(
        child: Text('$_count', style: const TextStyle(fontSize: 100)),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => setState(() => _count++), // Penulisan yang benar
            backgroundColor: const Color.fromARGB(255, 249, 249, 249),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 30),
          FloatingActionButton(
            onPressed: () => setState(() => _count = 0),
            backgroundColor: const Color.fromARGB(191, 51, 185, 44),
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              if (_count > 0) {
                setState(() => _count--);
              }
            },
            backgroundColor: const Color.fromARGB(190, 249, 249, 249),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    ); // <-- Langsung penutup Scaffold
  }
}
