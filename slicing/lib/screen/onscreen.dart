import 'dart:math';

import 'package:flutter/material.dart';

class OnScreen extends StatelessWidget {
  const OnScreen({super.key});

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
            Text('One Screen'),
            Icon(Icons.more_vert),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: Center(
        child: Transform.rotate(
          angle: pi / 2,
          child: const FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
