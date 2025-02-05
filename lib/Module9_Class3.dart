import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:device_preview/device_preview.dart';
import 'package:ostad_pp1/MyApp.dart';

class Module9_Class3 extends StatelessWidget {
  const Module9_Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Module 9, Class 3'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Image.network(
                  // width: 300,
                  // height: 200,
                  fit: BoxFit.fill,
                  'https://img.freepik.com/free-photo/ragdoll-cat-breed-vase-narcissus_2829-13964.jpg?t=st=1738715111~exp=1738718711~hmac=8ed1d7d4201706def0517ab3514c45e13ff299535c93ac17b09f20f0a2a6502c&w=996'),

              //Asset Image
              Image.asset('asset/adibLinkdin _com.png'),
              Image.asset('asset/flutter.png'),
            ],
          ),
        ));
  }
}
