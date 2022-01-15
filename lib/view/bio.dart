import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImagePage extends StatelessWidget {
  ImagePage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MY PROFILE",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Pushpa Mangal Gond",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              alignment: Alignment.center,
            ),
            Container(
              color: Colors.white,
              child: Center(
                  child: Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("p.jpg"),
                            fit: BoxFit.fill,
                          )))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                color: Colors.white,
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Name: Pushpa M G",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
            Container(
              color: Colors.white,
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "USN: 4MT20CS120",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              alignment: Alignment.center,
            ),
            Container(
              color: Colors.white,
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Email: pushpamg1602@gmail.com",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              alignment: Alignment.center,
            ),
            Container(
              color: Colors.white,
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Age: 19",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
