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
      ),body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: AnotherCarousel(
              images: const [
                NetworkImage("https://seapearlcoxsbazar.com/20230826135945im_/http_/www.seapearlcoxsbazar.com/images/rt001.jpg"),
                NetworkImage("https://www.trulyclassy.com/wp-content/uploads/2022/03/IMG_1697.jpg"),
                NetworkImage("https://cdn.prod.website-files.com/63c54685da9d4f2e450336fa/63cfd58ad17f1a56253ff6ce_154.PalmCourt.2022__DemanezTheo.jpg"),
                NetworkImage("https://images.trvl-media.com/lodging/1000000/20000/11300/11219/03b9464d_z.jpg"),
                NetworkImage("https://www.tbsnews.net/sites/default/files/styles/big_3/public/images/2020/11/05/sea_pearl_beach_resort_and_spa_ltd.jpg"),
                AssetImage("assets/appbarlogo222.png")
              ],
              dotSize: 4,
              indicatorBgPadding: 5.0,
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Explore Our Hotels",
                style: GoogleFonts.acme(
                  fontSize: 50,
                   color: Color(0xFF191970),
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),

          const SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.only(right: 0), // Add right padding
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 300,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Color(0xFF191970),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      topLeft: Radius.circular(5),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(.7),
                        blurRadius: 25,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      "Destination Haven - Cox's Bazar",
                      style: TextStyle(
                        color: Color(0xFFFFD700),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),


          const SizedBox(height: 10),

          SizedBox(
            height: 400, // Important! Set fixed height for GridView
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              physics: const NeverScrollableScrollPhysics(), // prevent internal scroll
              children: [

                Padding(

                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                      //color: Colors.redAccent,
                    ),

                    child: GestureDetector(  // To find it , firstly click the card click yellow light, click weiget, write GestureDetector
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context)=>HistoricalPlaceDetails(placeName:placeName1, image:saintMartianImage ,
                            description:saintMartainDes ) ));
                      },

                      child: Card(
                        elevation: 20,
                        // color: Colors.redAccent,
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            // Icon(Icons.fastfood,
                            //   size: 100,
                            //   color: Colors.white,
                            // ),

                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),  // Adjust radius as needed
                                  topRight: Radius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/saint_martin.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text("Saint Martin",
                              style: GoogleFonts.acme(
                                  color:Color(0xFF30638E),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                  ),
                ),










              ],
            ),
          ),
        ],
      ),
    ),



    );
  }
}
