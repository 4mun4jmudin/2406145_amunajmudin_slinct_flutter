import 'package:flutter/material.dart';

class TreeScreen extends StatelessWidget {
  const TreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const FlutterLogo(
            size: 40,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tree Screen'),
            Icon(Icons.more_vert),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: 15,
        itemBuilder: (context, index) {
          final color = index % 2 == 0 ? Colors.blue : Colors.yellow;
          return Container(
            color: color,
            child: Center(
              child: Text(
                'Hello',
                style: TextStyle(
                  color: color == Colors.blue ? Colors.white : Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
