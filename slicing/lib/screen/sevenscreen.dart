import 'package:flutter/material.dart';

class SevenScreen extends StatelessWidget {
  const SevenScreen({super.key});

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
            Text('Seven Screen'),
            Icon(Icons.more_vert),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: Container(
        width: 200,
        height: 200,
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.only(right: 25.0, bottom: 25.0),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(right: 25.0, bottom: 25.0),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.purple,
                child: Padding(
                  padding: const EdgeInsets.only(right: 25.0, bottom: 25.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 25.0, bottom: 25.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
