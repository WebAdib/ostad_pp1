import 'package:flutter/material.dart';

import 'UserDetails.dart';

// user info page
class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.lightBlue,
        title: Text(
          'User Information',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        //centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("User Information"),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 300,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 6,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5),
                    itemCount: 260,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Center(
                          child: Text(
                            "${index + 1}",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserDetails(name: 'Adib')));
              },
              child: Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
