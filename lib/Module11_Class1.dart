import 'package:flutter/material.dart';

class Module11_Class1 extends StatefulWidget {
  const Module11_Class1({super.key});

  @override
  State<Module11_Class1> createState() => _Module11_Class1State();
}

class _Module11_Class1State extends State<Module11_Class1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Module 11 - Class 1'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,

          children: [
            Text('Module 11 - Class 1'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('This is SnackBar'),
                    backgroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    elevation: 5,
                    behavior: SnackBarBehavior.floating, // Makes it float
                    margin: EdgeInsets.only(
                        bottom: 100,
                        left: 20,
                        right: 20), // Adjust bottom margin
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(
                      label: 'Close',
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: Text('Show SnackBar'),
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        Container(),
                        Text('Bottom Sheet'),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Dismiss'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Button is pressed'),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Alert Dialog'),
                      content: Text('This is an alert dialog'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Alert Dialog'),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Top Cities',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // Image Card
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    //padding: EdgeInsets.only(left: 10, right: 10),
                    height: 250,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            'https://images.unsplash.com/photo-1653932133705-851f4547eb2b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Text(
                                'City 1',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text(
                                  'lorem ipsum dolor sit amet, consectetur adipiscing el aspect et non proident'),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    //padding: EdgeInsets.only(left: 10, right: 10),
                    height: 250,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            'https://images.unsplash.com/photo-1653932133705-851f4547eb2b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Text(
                                'City 2',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text(
                                  'lorem ipsum dolor sit amet, consectetur adipiscing el aspect et non proident'),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    //padding: EdgeInsets.only(left: 10, right: 10),
                    height: 250,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            'https://images.unsplash.com/photo-1653932133705-851f4547eb2b?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Text(
                                'City 3',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8),
                              Text(
                                  'lorem ipsum dolor sit amet, consectetur adipiscing el aspect et non proident'),
                              SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
