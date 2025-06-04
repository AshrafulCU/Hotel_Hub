import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_hub/constant.dart';
import 'package:hotel_hub/hotel_info_details.dart';
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
              'images/appbarlogo.png', // Replace with your image path appbarlogo.png
              height: 60, // Adjust image height
              width: 60, // Adjust image width
            ),
            const SizedBox(width: 8), // Add spacing between image and text
            Text(
              "HotelHub",
              style: GoogleFonts.acme(
                color: const Color(0xFFFFD700),
                fontSize: MediaQuery.of(context).size.width * 0.045,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF191970),
        centerTitle: true,
      ),body:
    SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: AnotherCarousel(
              images: const [
                AssetImage("assets/app_image/canva1.jpg"),
                AssetImage("assets/app_image/canva2.jpg"),
                //NetworkImage("https://seapearlcoxsbazar.com/20230826135945im_/http_/www.seapearlcoxsbazar.com/images/rt001.jpg"),
                NetworkImage("https://www.trulyclassy.com/wp-content/uploads/2022/03/IMG_1697.jpg"),
                NetworkImage("https://cdn.prod.website-files.com/63c54685da9d4f2e450336fa/63cfd58ad17f1a56253ff6ce_154.PalmCourt.2022__DemanezTheo.jpg"),
                //NetworkImage("https://images.trvl-media.com/lodging/1000000/20000/11300/11219/03b9464d_z.jpg"),
                AssetImage("assets/app_image/canva3.png"),
                AssetImage("assets/app_image/canva4.jpg"),
                //NetworkImage("https://www.tbsnews.net/sites/default/files/styles/big_3/public/images/2020/11/05/sea_pearl_beach_resort_and_spa_ltd.jpg"),
                AssetImage("assets/app_image/appbarlogo222.png")  //
              ],
              dotSize: 4,
              indicatorBgPadding: 5.0,
            ),
          ),//image of slides
          const SizedBox(height: 30),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: AutoSizeText(
                "Explore Our Hotels",
                textAlign: TextAlign.left,
                style: GoogleFonts.acme(
                  color: Color(0xFF30638E),
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                minFontSize: 20,   // 👈 Minimum font size
                //maxFontSize: 18,   // 👈 Maximum font size
                overflow: TextOverflow.ellipsis,
              )
            ),
          ),// explore our hotel

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
          ),//destination haven ctg


          const SizedBox(height: 10),

          // SizedBox( IF i use this one, i will face extra gape problem between gridView and destination haven- SaintMartin
          //height: 400, // Important! Set fixed height for GridView
          //child:
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            physics: const NeverScrollableScrollPhysics(), // prevent internal scroll
            children: [

              // 01 ***********************************************

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
                          (context)=> hotel_reservation_details (
                        hotelName:coxName1, image:coxImage1 ,
                        description:coxDes1, price: coxPrice1, ) ));
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

                              //try1/hotel_cox_today.jpeg

                              child: Image.asset(
                                'hotels/hotel_cox_today.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Column( //I did it to make the text start from left side
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    SizedBox(height: 5,),
                                    Text(
                                      "Hotel The Cox Today",
                                      style: GoogleFonts.acme(
                                        color: Color(0xFF30638E),
                                        fontSize: MediaQuery.of(context).size.width * 0.045,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),


                                  ],
                                ),
                              ),




                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ElevatedButton.styleFrom(
                                    disabledBackgroundColor: Colors.pinkAccent,
                                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: AutoSizeText(
                                    "Book Now",
                                    maxLines: 1,
                                    minFontSize:5,
                                   // maxFontSize: 20,
                                    style: GoogleFonts.ultra(
                                      color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width * 0.045,
                                    ),
                                  ),
                                ),

                              ),





                            ],
                          ),



                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
                          (context)=> hotel_reservation_details (
                        hotelName:coxName1, image:coxImage1 ,
                        description:coxDes1, price: coxPrice1, ) ));
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

                              //try1/hotel_cox_today.jpeg

                              child: Image.asset(
                                'hotels/seagull_hotel.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Column( //I did it to make the text start from left side
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    SizedBox(height: 5,),
                                    Text(
                                      "SeaGull Hotel",
                                      style: GoogleFonts.acme(
                                        color: Color(0xFF30638E),
                                        fontSize: MediaQuery.of(context).size.width * 0.045,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),


                                  ],
                                ),
                              ),




                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ElevatedButton.styleFrom(
                                    disabledBackgroundColor: Colors.pinkAccent,
                                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: AutoSizeText(
                                    "Book Now",
                                    maxLines: 1,
                                    minFontSize:5,
                                    // maxFontSize: 20,
                                    style: GoogleFonts.ultra(
                                      color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width * 0.045,
                                    ),
                                  ),
                                ),

                              ),





                            ],
                          ),



                        ],
                      ),
                    ),
                  ),
                ),
              ),


            ],
          ),
          // ),
          const SizedBox(height: 20,),
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
                      "Destination Haven - SaintMartin",
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
          ),// destination haven

          // 2
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            physics: const NeverScrollableScrollPhysics(), // prevent internal scroll
            children: [

              // 01 ***********************************************

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
                          (context)=> hotel_reservation_details (
                        hotelName:coxName1, image:coxImage1 ,
                        description:coxDes1, price: coxPrice1, ) ));
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

                              //try1/hotel_cox_today.jpeg

                              child: Image.asset(
                                'hotels/hotel_cox_today.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          Column( //I did it to make the text start from left side
                            //mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    SizedBox(height: 5,),
                                    Text(
                                      "Hotel The Cox Today",
                                      style: GoogleFonts.acme(
                                        color: Color(0xFF30638E),
                                        fontSize: MediaQuery.of(context).size.width * 0.045,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),


                                  ],
                                ),
                              ),




                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: ElevatedButton(
                                  onPressed: null,
                                  style: ElevatedButton.styleFrom(
                                    disabledBackgroundColor: Colors.pinkAccent,
                                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: AutoSizeText(
                                    "Book Now",
                                    maxLines: 1,
                                    minFontSize:5,
                                    // maxFontSize: 20,
                                    style: GoogleFonts.ultra(
                                      color: Colors.white,
                                      fontSize: MediaQuery.of(context).size.width * 0.045,
                                    ),
                                  ),
                                ),

                              ),





                            ],
                          ),



                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // 02 ***********************************************

              // Padding(
              //
              //   padding: const EdgeInsets.all(10.0),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       shape: BoxShape.rectangle,
              //       borderRadius: BorderRadius.circular(10),
              //       //color: Colors.redAccent,
              //     ),
              //
              //     child: GestureDetector(  // To find it , firstly click the card click yellow light, click weiget, write GestureDetector
              //       onTap: (){
              //         Navigator.push(context, MaterialPageRoute(builder:
              //             (context)=> hotel_info_details (
              //           hotelName:nameCoxas2, image:coxImage2 ,
              //           description:desCox2, price: priceCox2, ) ));
              //       },
              //
              //       child: Card(
              //         elevation: 20,
              //         // color: Colors.redAccent,
              //         child: Column(
              //           mainAxisAlignment:MainAxisAlignment.center,
              //           children: [
              //             // Icon(Icons.fastfood,
              //             //   size: 100,
              //             //   color: Colors.white,
              //             // ),
              //
              //             Expanded(
              //               child: ClipRRect(
              //                 borderRadius: BorderRadius.only(
              //                   topLeft: Radius.circular(10),  // Adjust radius as needed
              //                   topRight: Radius.circular(10),
              //                 ),
              //
              //                 //try1/hotel_cox_today.jpeg
              //
              //                 child: Image.asset(
              //                   'try1/sea_gull_hotel.jpg',
              //                   fit: BoxFit.cover,
              //                 ),
              //               ),
              //             ),
              //
              //             Column( //I did it to make the text start from left side
              //               //mainAxisAlignment: MainAxisAlignment.start,
              //               children: [
              //                 Padding(
              //                   padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              //                   child: Row(
              //                     mainAxisAlignment: MainAxisAlignment.start,
              //
              //                     children: [
              //                       SizedBox(height: 5,),
              //                       Text("SeaGull: Luxurious",
              //                         textAlign: TextAlign.left,
              //                         style: GoogleFonts.acme(
              //                             color:Color(0xFF30638E),
              //                             fontSize: 18,
              //                             fontWeight: FontWeight.bold
              //                         ),
              //
              //                       ),
              //
              //                     ],
              //                   ),
              //                 ),
              //
              //
              //
              //
              //                 Padding(
              //                   padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              //                   child: ElevatedButton(
              //                     onPressed: null,
              //                     style: ElevatedButton.styleFrom(
              //                       disabledBackgroundColor: Colors.pinkAccent, // Your custom background color
              //                       padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Optional
              //                       shape: RoundedRectangleBorder( // Optional: make button rounded
              //                         borderRadius: BorderRadius.circular(20),
              //                       ),
              //                     ),
              //                     child: Text(
              //                       "Book Now",
              //                       style: GoogleFonts.ultra(
              //                         color: Colors.white, // Text color
              //                         fontSize: 13, // Optional
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //
              //
              //
              //
              //
              //               ],
              //             ),
              //
              //
              //
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),






        ],
      ),
    ),



    );
  }
}