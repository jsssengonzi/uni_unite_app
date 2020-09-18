import 'package:flutter/material.dart';
import 'package:uni_unite_app/model/GeneralButton.dart';
import 'package:uni_unite_app/ui/pages/more_info.dart';

class MainCard extends StatefulWidget {
  MainCard({Key key}) : super(key: key);

  @override
  _MainCardState createState() => _MainCardState();
}

class _MainCardState extends State<MainCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      elevation: 15,
      child: InkWell(
        splashColor: Color(0xff800000).withOpacity(0.2),
        onTap: () {
          _openMoreInfo(context: context);
        }, // go to the more info page
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            border: Border.all(
                color: Color(0xff924444), width: 2.0, style: BorderStyle.solid),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            // gradient: LinearGradient(
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight,
            //     colors: [
            //       Color(0xff800000).withOpacity(0.7),
            //       Color(0xff800000).withOpacity(0.9)
            //     ]),
            color: Colors.transparent,
          ),
          // SizedBox(
          //   height: 20,
          // ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
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
                        right: 20,
                        top: 20,
                      ),
                      child: Column(
                        children: [
                          Text("Elise K",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 33,
                                color: Colors.black,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("2nd, she/hers",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("University of Chicago",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ))
                        ],
                      ))
                ],
              ),
              SizedBox(height: 10),
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
                    child: Text("Campus Involvement",
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
              // SizedBox(height: 10),
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
              //       child: Text("Campus Involvement...",
              //           style: TextStyle(
              //             fontSize: 20,
              //           )),
              //     ),
              //   ],
              // ),
              // SizedBox(height: 5),
              // //TODO -- MAKE ELLIPTICAL BUTTONS
              // SingleChildScrollView(
              //     scrollDirection: Axis.horizontal,
              //     padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       // children: user.involvement == null
              //       //  ? <Widget>[
              //       //   Text(
              //       //     "No relevant involvement",
              //       //     style: TextStyle(color: Colors.grey)
              //       //   )
              //       // ]
              //       // : user.involvement
              //       //   .map((involvement) => GeneralButton(
              //       //     text: involvement
              //       //   ),
              //       //   onSelected: (b) {}))
              //       //   .toList()),
              //       children: [
              //         GeneralButton(text: "TAMID Consulting"),
              //         SizedBox(width: 7),
              //         GeneralButton(text: "Medical Research"),
              //         SizedBox(width: 7),
              //         GeneralButton(text: "SWS"),
              //         SizedBox(width: 7),
              //         GeneralButton(text: "IM Sports"),
              //       ],
              //     )),
            ],
          ),
        ),
      ),
    );
  }

  void _openMoreInfo({BuildContext context, bool fullscreenDialog = true}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: fullscreenDialog,
            builder: (context) => MoreInfo()));
  }
}
