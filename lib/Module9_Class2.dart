import 'package:flutter/material.dart';

class Module9_Class2 extends StatelessWidget {
  const Module9_Class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 9 - Class 2'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: AspectRatio(aspectRatio: 16 / 9),
          ),
          SizedBox(height: 20),
          // Container(
          //   height: 400,
          //   width: 300,
          //   decoration: BoxDecoration(
          //     color: Colors.green,
          //     borderRadius: BorderRadius.circular(10),
          //   ),
          //   child: FractionallySizedBox(
          //       widthFactor: 0.5,
          //       heightFactor: 0.5,
          //       child: Container(
          //         color: Colors.blue,
          //         child: Center(
          //           child: Text(
          //             'Module 9 - Class 2',
          //             style: TextStyle(color: Colors.white),
          //             //textAlign: TextAlign.center,
          //           ),
          //         ),
          //       )),
          // ),
          SizedBox(
            height: 200,
            width: 300,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          Center(
            child: Stack(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
