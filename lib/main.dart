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

// My application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          centerTitle: true,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            elevation: 4.0,
          ),
        ),
      ),
      title: '1st Practice App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

// My home page
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    /// Form Keys
    final _formKeys = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.lightBlue,
        title: Text(
          'M8_Class2',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        //centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
                key: _formKeys,
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        print('Text Field value changed: $value');
                      },
                      decoration: InputDecoration(
                        labelText: 'Enter your name',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Name is required';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 12),
                    TextFormField(
                        onChanged: (value) {
                          print('Text Field value changed: $value');
                        },
                        decoration: InputDecoration(
                          labelText: 'Enter your email address',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          }
                          if (!value.contains('@')) {
                            return 'Email is not valid';
                          }
                          return null;
                        }),
                    SizedBox(height: 12),
                    TextFormField(
                        onChanged: (value) {
                          print('Text Field value changed: $value');
                        },
                        decoration: InputDecoration(
                          labelText: 'Enter your password',
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          }
                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }
                          return null;
                        }),
                    SizedBox(height: 12),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        elevation: 4.0,
                      ),
                      onPressed: () {
                        if (_formKeys.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UserInfo()));
                          print('Button pressed');
                        }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Error message'),
                  ],
                )),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Floating Action Button clicked');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

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
                height: 400,
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
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
