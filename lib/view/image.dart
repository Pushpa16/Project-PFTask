import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.width * 0.80,
            width: MediaQuery.of(context).size.width * 0.80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.red,
              image: DecorationImage(
                image: AssetImage(
                    "20pcs-string-lights-led-bulbs-warm-white-us-plug-1571991485414.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}
