import 'package:flutter/material.dart';
import 'package:uni_unite_app/model/GeneralButton.dart';
import 'package:uni_unite_app/model/mainCard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SwipingFeed extends StatefulWidget {
  @override
  _SwipingFeedState createState() => _SwipingFeedState();
}

class _SwipingFeedState extends State<SwipingFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "UniUnite",
            style: TextStyle(
              fontSize: 28,
              //fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.filter,
                  color: Colors.amberAccent,
                ),
                onPressed: null)
          ],
          backgroundColor: Color(0xff800000),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //     colors: [
              //       Color(0xff800000).withOpacity(0.8),
              //       Color(0xff800000).withOpacity(0.3),
              //     ]),
              color: Colors.transparent,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text("UniUnite",
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 37,
                  //             color: Colors.black)),
                  //   ],
                  // ),
                  // //SizedBox(height: 1),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text("Meet your peers!",
                  //         style: TextStyle(color: Colors.grey, fontSize: 17)),
                  //   ],
                  // ),

                  SizedBox(height: 10),
                  MainCard(),

                  //TODO:WRAP THIS IN A CARD AND MAKE A SEPERATE CLASS
                  // Container(
                  //   height: MediaQuery.of(context).size.height * 0.65,
                  //   width: MediaQuery.of(context).size.width * 0.9,
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: Color(0xff924444),
                  //     ),
                  //     shape: BoxShape.rectangle,
                  //     borderRadius: BorderRadius.circular(20),
                  //     color: Colors.transparent,
                  //   ),
                  //   // SizedBox(
                  //   //   height: 20,
                  //   // ),
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: ClipRRect(
                  //               borderRadius: BorderRadius.circular(15.0),
                  //               child: Image(
                  //                 image: AssetImage("assets/images/photo.jpg"),
                  //                 fit: BoxFit.cover,
                  //                 width: MediaQuery.of(context).size.width / 3,
                  //                 height:
                  //                     MediaQuery.of(context).size.height / 4.5,
                  //               ),
                  //             ),
                  //           ),
                  //           Spacer(),
                  //           Padding(
                  //               padding: const EdgeInsets.only(
                  //                 right: 20,
                  //                 top: 20,
                  //               ),
                  //               child: Column(
                  //                 children: [
                  //                   Text("Beatrice K",
                  //                       style: TextStyle(
                  //                         fontWeight: FontWeight.bold,
                  //                         fontSize: 33,
                  //                         color: Colors.black,
                  //                       )),
                  //                   SizedBox(
                  //                     height: 5,
                  //                   ),
                  //                   Text("2nd, she/hers",
                  //                       style: TextStyle(
                  //                         fontSize: 18,
                  //                         color: Colors.grey,
                  //                       )),
                  //                   SizedBox(
                  //                     height: 5,
                  //                   ),
                  //                   Text("University of Chicago",
                  //                       style: TextStyle(
                  //                         fontSize: 18,
                  //                         color: Colors.grey,
                  //                       ))
                  //                 ],
                  //               ))
                  //         ],
                  //       ),
                  //       SizedBox(height: 10),
                  //       Row(
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  //             child: Text("Academic Interests...",
                  //                 style: TextStyle(
                  //                   fontSize: 20,
                  //                 )),
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(height: 5),
                  //       //TODO -- MAKE ELLIPTICAL BUTTONS
                  //       SingleChildScrollView(
                  //           scrollDirection: Axis.horizontal,
                  //           padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //             // children: user.academicInterests == null
                  //             //  ? <Widget>[
                  //             //   Text(
                  //             //     "No relevant academic interests",
                  //             //     style: TextStyle(color: Colors.grey)
                  //             //   )
                  //             // ]
                  //             // : user.academicInterests
                  //             //   .map((academicInterest) => GeneralButton(
                  //             //     text: academicInterest
                  //             //   ),
                  //             //   onSelected: (b) {}))
                  //             //   .toList()),
                  //             children: [
                  //               GeneralButton(text: "Mathematics"),
                  //               SizedBox(width: 7),
                  //               GeneralButton(text: "Chemistry"),
                  //               SizedBox(width: 7),
                  //               GeneralButton(text: "Computer Science"),
                  //               SizedBox(width: 7),
                  //               GeneralButton(text: "Biology"),
                  //             ],
                  //           )),
                  //       SizedBox(height: 10),
                  //       Row(
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  //             child: Text("Hobbies...",
                  //                 style: TextStyle(
                  //                   fontSize: 20,
                  //                 )),
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(height: 5),
                  //       //TODO -- MAKE ELLIPTICAL BUTTONS
                  //       SingleChildScrollView(
                  //           scrollDirection: Axis.horizontal,
                  //           padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //             // children: user.hobbies == null
                  //             //  ? <Widget>[
                  //             //   Text(
                  //             //     "No relevant hobbies",
                  //             //     style: TextStyle(color: Colors.grey)
                  //             //   )
                  //             // ]
                  //             // : user.hobbies
                  //             //   .map((hobby) => GeneralButton(
                  //             //     text: hobby
                  //             //   ),
                  //             //   onSelected: (b) {}))
                  //             //   .toList()),
                  //             children: [
                  //               GeneralButton(text: "Tennis"),
                  //               SizedBox(width: 7),
                  //               GeneralButton(text: "Piano"),
                  //               SizedBox(width: 7),
                  //               GeneralButton(text: "Swimming"),
                  //               SizedBox(width: 7),
                  //               GeneralButton(text: "Baking"),
                  //             ],
                  //           )),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            )));
  }
}

class SwipingFeedItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Swiping Feed Item');
  }
}
