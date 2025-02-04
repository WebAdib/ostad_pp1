import 'package:flutter/material.dart';

// Media queries
class Module_9Class1 extends StatelessWidget {
  const Module_9Class1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 9 - Class 1'),
      ),
      body: Center(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: BoxDecoration(
            color: Colors.grey,
            //borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Center(
            child: Text(
              'This is Module 9 - Class 1',
              style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

//wrap example
class WrapExample extends StatelessWidget {
  final List<String> categories = [
    'Fruits',
    'Fish',
    'Pineapple',
    'Snacks',
    'Chips',
    'Bakery',
    'Vegetable'
  ];
  //const WrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Wrap(
              spacing: 4,
              children: categories.map((category) {
                return Chip(
                  label: Text(category),
                  backgroundColor: Colors.lightBlueAccent,
                );
              }).toList(),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: List.generate(
                  150,
                  (index) => Chip(
                      label: Text("Item ${index}"),
                      backgroundColor: Colors.redAccent),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Layout Builder
class LayoutBuilder1 extends StatelessWidget {
  const LayoutBuilder1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder Example'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 400) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 15,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(5.0),
                  child: Card(
                    child: Text("Item ${index + 1}"),
                  ),
                );
              },
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: List.generate(
                  11,
                  (index) => Text("Item $index"),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
