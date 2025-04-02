import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      ),body: Column(
      children: [

        SizedBox(
          height: 300,
          width: double.infinity,
          child: AnotherCarousel(
            images: const [
              //AssetImage("assets/saint_martin_hotel.jpeg"),
              //AssetImage("assets/cox_hotel.jpeg"),
              // we have display image from netwrok as well
              NetworkImage(
                  "https://seapearlcoxsbazar.com/20230826135945im_/http_/www.seapearlcoxsbazar.com/images/rt001.jpg"),
              NetworkImage(
                  "https://www.trulyclassy.com/wp-content/uploads/2022/03/IMG_1697.jpg"),
              NetworkImage(
                  "https://cdn.prod.website-files.com/63c54685da9d4f2e450336fa/63cfd58ad17f1a56253ff6ce_154.PalmCourt.2022__DemanezTheo.jpg"),
              NetworkImage(
                  "https://www.luxurylink.com/images/sho_5c0939cf/143_550-630/image-143_550.jpg"),
              NetworkImage(
                  "https://images.trvl-media.com/lodging/1000000/20000/11300/11219/03b9464d_z.jpg"),
              NetworkImage(
                  "https://www.tbsnews.net/sites/default/files/styles/big_3/public/images/2020/11/05/sea_pearl_beach_resort_and_spa_ltd.jpg"),
              AssetImage("assets/appbarlogo222.png")


            ],
            dotSize:4,
            indicatorBgPadding: 5.0,
          ),
        ),

        // AssetImage("assets/saint_martin_hotel.jpeg"),
        // AssetImage("assets/cox_hotel.jpeg"),


      GridView.count(crossAxisCount: 2,
      mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [

        ],
      )
      ],
    ),


    );
  }
}
