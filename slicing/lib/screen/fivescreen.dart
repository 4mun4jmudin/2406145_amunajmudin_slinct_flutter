import 'package:flutter/material.dart';

class FiveScreen extends StatelessWidget {
  const FiveScreen({super.key});

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
            Text('Five Screen'),
            Icon(Icons.more_vert),
          ],
        ),
        backgroundColor: Colors.grey.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0),
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            final color = index % 2 == 0 ? Colors.blue : Colors.yellow;
            return Padding(
              padding: const EdgeInsets.only(bottom: 0.0),
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      width: 420,
                      height: 200,
                      color: color,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Halo ${index + 1}',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 50.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
