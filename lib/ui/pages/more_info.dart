import 'package:flutter/material.dart';
import 'package:uni_unite_app/model/GeneralButton.dart';

class MoreInfo extends StatefulWidget {
  MoreInfo({Key key}) : super(key: key);

  @override
  _MoreInfoState createState() => _MoreInfoState();
}

class _MoreInfoState extends State<MoreInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff800000).withRed(r),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
        title: Text("Elise K"),
        centerTitle: true,
        actions: [IconButton(icon: Icon(Icons.more_horiz), onPressed: null)],
        backgroundColor: Color(0xff800000),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xff800000).withOpacity(0.7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(17, 8, 8, 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        image: AssetImage("assets/images/ek_profile.jpg"),
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 4.5,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                      padding: const EdgeInsets.only(
                        right: 50,
                        top: 20,
                      ),
                      child: Column(
                        children: [
                          Text("Bio Here",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Bio Here",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("Bio Here",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ))
                        ],
                      ))
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 5.0),
            //   child: Container(
            //     height: 1.0,
            //     width: 490.0,
            //     color: Colors.black,
            //   ),
            // ),
            SizedBox(height: 15),
            //TODO: FIGURE OUT HOW TO WRAP TEXT FOR BIO
            // Expanded(
            //   child: Container(
            //     padding: EdgeInsets.all(8.0),
            //     child: (Column(
            //       children: [
            //         Text(
            //           "Just looking to meet new people with similar interests. Also pre-med looking for a study group :)",
            //           maxLines: 3,
            //           style: TextStyle(fontSize: 14.0),
            //           overflow: TextOverflow.ellipsis,
            //         ),
            //       ],
            //     )),
            //   ),
            // ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
            //       child: Row(
            //         children: [
            //           Expanded(
            //             child: Text(
            //                 "Just looking to meet new people with similar interests. Also pre-med looking for a study group :)",
            //                 textAlign: TextAlign.left,
            //                 style: TextStyle(fontSize: 14)),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
                  child: Text("Academic Interests...",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            SizedBox(height: 5),
            //TODO -- MAKE ELLIPTICAL BUTTONS
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // children: user.academicInterests == null
                  //  ? <Widget>[
                  //   Text(
                  //     "No relevant academic interests",
                  //     style: TextStyle(color: Colors.grey)
                  //   )
                  // ]
                  // : user.academicInterests
                  //   .map((academicInterest) => GeneralButton(
                  //     text: academicInterest
                  //   ),
                  //   onSelected: (b) {}))
                  //   .toList()),
                  children: [
                    GeneralButton(text: "Mathematics"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Chemistry"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Computer Science"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Biology"),
                  ],
                )),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  child: Text("Hobbies...",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            SizedBox(height: 5),
            //TODO -- MAKE ELLIPTICAL BUTTONS
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // children: user.hobbies == null
                  //  ? <Widget>[
                  //   Text(
                  //     "No relevant hobbies",
                  //     style: TextStyle(color: Colors.grey)
                  //   )
                  // ]
                  // : user.hobbies
                  //   .map((hobby) => GeneralButton(
                  //     text: hobby
                  //   ),
                  //   onSelected: (b) {}))
                  //   .toList()),
                  children: [
                    GeneralButton(text: "Tennis"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Piano"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Swimming"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Baking"),
                  ],
                )),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  child: Text("Languages...",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            SizedBox(height: 5),
            //TODO -- MAKE ELLIPTICAL BUTTONS
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // children: user.languages == null
                  //  ? <Widget>[
                  //   Text(
                  //     "No relevant languages",
                  //     style: TextStyle(color: Colors.grey)
                  //   )
                  // ]
                  // : user.languages
                  //   .map((language) => GeneralButton(
                  //     text: language
                  //   ),
                  //   onSelected: (b) {}))
                  //   .toList()),
                  children: [
                    GeneralButton(text: "English"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Russian"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Spanish"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Hebrew"),
                  ],
                )),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  child: Text("Campus Involvement...",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            SizedBox(height: 5),
            //TODO -- MAKE ELLIPTICAL BUTTONS
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // children: user.involvement == null
                  //  ? <Widget>[
                  //   Text(
                  //     "No relevant involvement",
                  //     style: TextStyle(color: Colors.grey)
                  //   )
                  // ]
                  // : user.involvement
                  //   .map((involvement) => GeneralButton(
                  //     text: involvement
                  //   ),
                  //   onSelected: (b) {}))
                  //   .toList()),
                  children: [
                    GeneralButton(text: "TAMID Consulting"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Medical Research"),
                    SizedBox(width: 7),
                    GeneralButton(text: "SWS"),
                    SizedBox(width: 7),
                    GeneralButton(text: "IM Sports"),
                  ],
                )),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  child: Text("Campus Involvement...",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            SizedBox(height: 5),
            //TODO -- MAKE ELLIPTICAL BUTTONS
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // children: user.involvement == null
                  //  ? <Widget>[
                  //   Text(
                  //     "No relevant involvement",
                  //     style: TextStyle(color: Colors.grey)
                  //   )
                  // ]
                  // : user.involvement
                  //   .map((involvement) => GeneralButton(
                  //     text: involvement
                  //   ),
                  //   onSelected: (b) {}))
                  //   .toList()),
                  children: [
                    GeneralButton(text: "TAMID Consulting"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Medical Research"),
                    SizedBox(width: 7),
                    GeneralButton(text: "SWS"),
                    SizedBox(width: 7),
                    GeneralButton(text: "IM Sports"),
                  ],
                )),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  child: Text("Campus Involvement...",
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            SizedBox(height: 5),
            //TODO -- MAKE ELLIPTICAL BUTTONS
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // children: user.involvement == null
                  //  ? <Widget>[
                  //   Text(
                  //     "No relevant involvement",
                  //     style: TextStyle(color: Colors.grey)
                  //   )
                  // ]
                  // : user.involvement
                  //   .map((involvement) => GeneralButton(
                  //     text: involvement
                  //   ),
                  //   onSelected: (b) {}))
                  //   .toList()),
                  children: [
                    GeneralButton(text: "TAMID Consulting"),
                    SizedBox(width: 7),
                    GeneralButton(text: "Medical Research"),
                    SizedBox(width: 7),
                    GeneralButton(text: "SWS"),
                    SizedBox(width: 7),
                    GeneralButton(text: "IM Sports"),
                  ],
                )),
            SizedBox(height: 15),
            // Row(
            //   children: [],
            // ),
          ],
        ),
      ),
    );
  }
}
