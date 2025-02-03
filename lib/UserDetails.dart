import 'package:flutter/material.dart';
import 'UserInfo.dart';
import 'UserNumber.dart';

// user details page
class UserDetails extends StatelessWidget {
  final String name;
  const UserDetails({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Details',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("User Details - ${name}"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => UserNumber()));
              },
              child: Text("User Number Page"),
            ),
          ],
        ),
      ),
    );
  }
}
