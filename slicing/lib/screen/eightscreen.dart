import 'package:flutter/material.dart';

class EightScreen extends StatelessWidget {
  const EightScreen({super.key});

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
            Text('Eight Screen'),
            Icon(Icons.more_vert),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                      child: Padding(
                        padding: const EdgeInsets.all(25),
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
      ),
    );
  }
}
