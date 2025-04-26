import 'package:flutter/material.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({super.key});

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
            Text('Four Screen'),
            Icon(Icons.more_vert),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          final color = index % 2 == 0 ? Colors.blue : Colors.yellow;
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 150,
                height: 150,
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
              ),
            ),
          );
        },
      ),
    );
  }
}
