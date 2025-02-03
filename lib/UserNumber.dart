import 'package:flutter/material.dart';

//User Number
class UserNumber extends StatefulWidget {
  const UserNumber({super.key});

  @override
  State<UserNumber> createState() => _UserNumberState();
}

class _UserNumberState extends State<UserNumber> {
  int _count = 0;

  void incrementCount() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Number'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Current User Number: $_count'),
            ElevatedButton(
              onPressed: incrementCount,
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
