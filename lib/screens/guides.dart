import 'package:flutter/material.dart';
import 'package:gulfthisnews/constants/constants.dart';
import 'package:gulfthisnews/screens/detailScreen.dart';

class Guides extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(
        children: [
          GestureDetector(
              child: Container(
                padding: EdgeInsets.only(top: 5, left: 8, right: 6.5),
                decoration: BoxDecoration(

                    //boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(.40), //color of shadow
                    //     spreadRadius: 1, //spread radius
                    //     blurRadius: 0.10, // blur radius
                    //     // offset: Offset(1, 1)
                    //   )
                    // ]
                    ),
                child: Container(
                  //   color: Colors.white,
                  height: MediaQuery.of(context).size.height * .40,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 12,
                    left: 12,
                    right: 12,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset('assets/image1.jpg',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Text("Value Added Tax Vat in Bahrain:",
                          style: TextStyle(
                              // color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                      Spacer(
                        flex: 1,
                      ),
                      Text("Everything You Need to Know",
                          style: TextStyle(
                              // color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                      Spacer(
                        flex: 3,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Text("Updated March 02, 2021     2 Min Read",
                              style: TextStyle(
                                // color: Colors.grey[400],
                                color: greyButtonColor,
                                fontSize: 12,
                              )),

                          Spacer(
                            flex: 5,
                          ),

                          // Spacer(
                          //   flex: 3,
                          // ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()),
                );
              }),
          // Divider(
          //   thickness: 1,
          // ),
          SizedBox(
            height: 2,
          ),
          GestureDetector(
              child: Container(
                padding:
                    EdgeInsets.only(bottom: 5, top: 5, left: 8, right: 6.5),
                decoration: BoxDecoration(

                    //boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(.40), //color of shadow
                    //     spreadRadius: 1, //spread radius
                    //     blurRadius: 0.10, // blur radius
                    //     // offset: Offset(1, 1)
                    //   )
                    // ]
                    ),
                child: Container(
                  // color: Colors.white,
                  height: MediaQuery.of(context).size.height * .40,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 12,
                    left: 12,
                    right: 12,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset('assets/image2.jpg',
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Spacer(
                        flex: 2,
                      ),
                      Text("How to Calculate End of Service",
                          style: TextStyle(
                              //color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                      Spacer(
                        flex: 1,
                      ),
                      Text("Indemnity in Bahrain(2021)",
                          style: TextStyle(
                              // color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                      Spacer(
                        flex: 3,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Text("Updated March 02, 2021     2 Min Read",
                              style: TextStyle(
                                color: greyButtonColor,
                                fontSize: 12,
                              )),

                          Spacer(
                            flex: 5,
                          ),

                          // Spacer(
                          //   flex: 3,
                          // ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()),
                );
              }),
        ],
      ),
    ));
  }
}
