import 'package:flutter/material.dart';
import 'package:slicing/screen/eightscreen.dart';
import 'package:slicing/screen/elevenscreen.dart';
import 'package:slicing/screen/fivescreen.dart';
import 'package:slicing/screen/fourscreen.dart';
import 'package:slicing/screen/ninescreen.dart';
import 'package:slicing/screen/onscreen.dart';
import 'package:slicing/screen/sevenscreen.dart';
import 'package:slicing/screen/sixscreen.dart';
import 'package:slicing/screen/tenscreen.dart';
import 'package:slicing/screen/treescreen.dart';
import 'package:slicing/screen/twoscreen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigasi Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> apps = [
      {
        'title': 'On Screen',
        'icon': Icons.looks_one,
        'color': Colors.indigo.shade300,
        'destination': const OnScreen(),
      },
      {
        'title': 'Two Screen',
        'icon': Icons.looks_two,
        'color': Colors.blue.shade300,
        'destination': const Twoscreen(),
      },
      {
        'title': 'Tree Screen',
        'icon': Icons.looks_3,
        'color': Colors.teal.shade300,
        'destination': const TreeScreen(),
      },
      {
        'title': 'Four Screen',
        'icon': Icons.looks_4,
        'color': Colors.green.shade300,
        'destination': const FourScreen(),
      },
      {
        'title': 'Five Screen',
        'icon': Icons.looks_5,
        'color': Colors.amber.shade300,
        'destination': const FiveScreen(),
      },
      {
        'title': 'Six Screen',
        'icon': Icons.looks_6,
        'color': Colors.orange.shade300,
        'destination': SixScreen(),
      },
      {
        'title': 'Seven Screen',
        'icon': Icons.filter_7,
        'color': Colors.deepPurple.shade200,
        'destination': const SevenScreen(),
      },
      {
        'title': 'Eight Screen',
        'icon': Icons.filter_8,
        'color': Colors.pink.shade200,
        'destination': const EightScreen(),
      },
      {
        'title': 'Nine Screen',
        'icon': Icons.filter_9,
        'color': Colors.cyan.shade200,
        'destination': const NineScreen(),
      },
      {
        'title': 'Ten Screen',
        'icon': Icons.ten_k,
        'color': Colors.lime.shade300,
        'destination': const TenScreen(),
      },
      {
        'title': 'Eleven Screen',
        'icon': Icons.eleven_mp,
        'color': Colors.brown.shade300,
        'destination': const ElevenScreen(),
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: const FlutterLogo(),
        backgroundColor: Colors.grey,
        title: const Text(
          'Tugas Slicing',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
                childAspectRatio: 0.9,
              ),
              itemCount: apps.length,
              itemBuilder: (context, index) {
                final app = apps[index];
                return _buildAppCard(
                  context,
                  title: app['title'],
                  icon: app['icon'],
                  color: app['color'],
                  destination: app['destination'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Color color,
    required Widget destination,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.85),
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 6,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 36.0, color: Colors.white),
            const SizedBox(height: 6.0),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black54,
                    offset: Offset(1, 1),
                    blurRadius: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
