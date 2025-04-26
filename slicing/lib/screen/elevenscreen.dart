import 'package:flutter/material.dart';

class ElevenScreen extends StatelessWidget {
  const ElevenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const FlutterLogo(size: 40),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('Eleven Screen'), Icon(Icons.more_vert)],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 33),
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) {
                final color = index % 2 == 0 ? Colors.blue : Colors.yellow;
                return Container(
                  width: 100,
                  margin: const EdgeInsets.only(right: 10),
                  color: color,
                  child: Center(
                    child: Text(
                      'Hello ${index + 1}',
                      style: TextStyle(
                        color:
                            color == Colors.blue ? Colors.white : Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(
                  top: 16, bottom: 16, left: 16, right: 16),
              itemCount: 15,
              itemBuilder: (context, index) {
                final color = index % 2 == 0 ? Colors.blue : Colors.yellow;
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 200,
                        color: color,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Halo ${index + 1}',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
