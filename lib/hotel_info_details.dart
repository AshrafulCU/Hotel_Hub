import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class hotel_reservation_details extends StatefulWidget {
  const hotel_reservation_details({super.key});

  @override
  State<hotel_reservation_details> createState() => _hotel_reservation_detailsState();
}

class _hotel_reservation_detailsState extends State<hotel_reservation_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row( // Use Row to place image and text side-by-side
          mainAxisSize: MainAxisSize.min, // Adjust Row size
          children: <Widget>[
            Image.asset(
              'assets/appbarlogo.png', // Replace with your image path
              height: 60, // Adjust image height
              width: 60, // Adjust image width
            ),
            const SizedBox(width: 8), // Add spacing between image and text
            Text(
              "HotelHub",
              style: GoogleFonts.acme(
                color: const Color(0xFFFFD700),
                fontSize: 40,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF191970),
        centerTitle: true,
      ),body:SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/${widget.image}",
                height: 300,
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.fitWidth,

              )
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(

                height: 80,
                width: MediaQuery.sizeOf(context).width,
                color:Color(0xFF30638E),
                child: Center(
                  child: Text(
                    widget.placeName, style: GoogleFonts.actor(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white


                  ),
                  ),
                ),
              )
            ],

          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.description, textAlign: TextAlign.justify,),
          ),









        ],

      ),
    ),







    );
  }
}
