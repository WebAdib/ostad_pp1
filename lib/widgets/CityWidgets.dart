import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  final String cityImg, cityName, cityDescription;
  const CityWidget({
    super.key,
    required this.cityImg,
    required this.cityName,
    required this.cityDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.only(left: 10, right: 10),
      height: 250,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(cityImg),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                Text(
                  cityName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(cityDescription),
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
    );
  }
}
