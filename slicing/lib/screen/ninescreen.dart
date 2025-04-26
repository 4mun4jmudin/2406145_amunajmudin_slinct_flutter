import 'package:flutter/material.dart';

class NineScreen extends StatelessWidget {
  const NineScreen({super.key});

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
            Text('Nine Screen'),
            Icon(Icons.more_vert),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(300),
              border: Border.all(
                color: Colors.black,
                width: 10,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/frofile.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
