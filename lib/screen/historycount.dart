import 'package:flutter/material.dart';

class Historycount extends StatefulWidget {
  const Historycount({super.key});

  @override
  State<Historycount> createState() => _HistorycountState();
}

class _HistorycountState extends State<Historycount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'History',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Home Screen!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add/Edit Products'),
            ),
          ],
        ),
      ),
    );
  }
}
