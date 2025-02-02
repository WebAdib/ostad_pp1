import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  ////// Previous Class Code
  /*
  runApp(MaterialApp(
    title: '1st Practice App',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text(
            'My First App',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          //scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 4.0,
                    ),
                    onPressed: () {
                      print('This is a button');
                    },
                    child: Row(
                      children: [
                        Text(
                          "Button",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.send)
                      ],
                    )),
              ),
              Icon(Icons.insert_comment_sharp, size: 25, color: Colors.blue),
              TextButton(
                  onPressed: () {
                    print('This is a TextButton');
                  },
                  child: Text('Click Me',
                      style: TextStyle(color: Colors.blue, fontSize: 20))),
              InkWell(
                onTap: () {
                  print('This is an InkWell');
                },
                onLongPress: () {
                  print('This is an InkWell long press');
                },
                child: Container(
                  height: 200,
                  width: 200,
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 2.0,
                          blurRadius: 5.0,
                          offset: Offset(5, 5),
                        ),
                      ]),
                  child: Text('This is a Container',
                      style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        )),
  ));

   */
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1st Practice App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ////// Text Controller
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _phoneNumberController =
        TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'My First App 2',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //// Form fields
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    //fillColor: Colors.grey.withOpacity(0.1),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(5),
                    //   borderSide: BorderSide(color: Colors.black),
                    //),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: _emailController,
                  obscureText: true, // to hide password
                  decoration: InputDecoration(
                    labelText: 'Enter your email address',
                    hintText: 'Enter your email address',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    //fillColor: Colors.grey.withOpacity(0.1),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(5),
                    //   borderSide: BorderSide(color: Colors.black),
                    //),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: _phoneNumberController,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter your phone number',
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    //fillColor: Colors.grey.withOpacity(0.1),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(5),
                    //   borderSide: BorderSide(color: Colors.black),
                    //),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true, // to hide password
                  decoration: InputDecoration(
                    labelText: 'Enter your password',
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    //fillColor: Colors.grey.withOpacity(0.1),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(5),
                    //   borderSide: BorderSide(color: Colors.black),
                    //),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),

              ////// controller text
              Text(
                _nameController.text,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                _emailController.text,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                _phoneNumberController.text,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                _passwordController.text,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Divider(),
              ListTile(
                title: Text('Form Validation'),
                subtitle: Text('Software Engineer'),
                leading: Icon(Icons.engineering),
                onTap: () {
                  print("I'm List Tile");
                },
              ),

              ////// Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 4.0,
                ),
                onPressed: () {
                  print('Form submitted');
                  print(_nameController.text);
                  print(_emailController.text);
                  print(_phoneNumberController.text);
                  print(_passwordController.text);
                },
                child: Text('Submit', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
