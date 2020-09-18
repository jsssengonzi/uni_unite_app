import 'package:flutter/material.dart';
import 'package:uni_unite_app/model/GeneralButton.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //     icon: Icon(Icons.arrow_back),
        //     onPressed: () => Navigator.pop(context)),
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.edit,
                //color: Colors.amber[200],
              ),
              //color: Colors.amberAccent,
              onPressed: null),
          IconButton(
              icon: Icon(
                Icons.settings,
                //color: Colors.amber[200],
              ),
              //color: Colors.amberAccent,
              onPressed: null),
        ], // onPressed: Take to the edit profile page
        backgroundColor: Color(0xff800000),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xff800000).withOpacity(0.8),
              child: Row(
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
                          Text("Beatrice K",
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
                                color: Colors.white,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text("University of Chicago",
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

// class Profile extends StatefulWidget {
//   @override
//   _ProfileState createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   String _email, _password;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Form(
//         child: Stack(
//           children: [
//             Container(
//               decoration: BoxDecoration(color: Color(0xff800000)),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Container(
//                 height: MediaQuery.of(context).size.height * 0.65,
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(60),
//                       topRight: Radius.circular(60)),
//                 ),
//               ),
//             ),
//             Positioned(
//               child: Container(
//                   margin: EdgeInsets.only(
//                       top: MediaQuery.of(context).size.height * 0.1),
//                   child: Column(children: [
//                     Align(
//                       alignment: Alignment.topCenter,
//                       child: Text(
//                         "Elise K",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 50,
//                             fontWeight: FontWeight.bold),
//                       ),
//                     )
//                   ])),
//             ),
//             Padding(
//               padding: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height * 0.41,
//                   right: 30,
//                   left: 30),
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     padding: EdgeInsets.all(5),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(15),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color.fromRGBO(143, 148, 215, 0.6),
//                             blurRadius: 20.0,
//                             offset: Offset(0, 10),
//                           )
//                         ]),
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                           padding: EdgeInsets.all(8.0),
//                           decoration: BoxDecoration(
//                             border: Border(
//                               bottom: BorderSide(
//                                 color: Colors.grey[100],
//                               ),
//                             ),
//                           ),
//                           child: TextFormField(
//                             validator: (input) {
//                               if (input.isEmpty) {
//                                 return 'Please type a valid email';
//                               }
//                             },
//                             onSaved: (input) => _email = input,
//                             decoration: InputDecoration(
//                               border: InputBorder.none,
//                               hintText: "Email",
//                               hintStyle: TextStyle(color: Colors.grey[500]),
//                             ),
//                           ),
//                         ),
//                         Container(
//                           padding: EdgeInsets.all(8.0),
//                           child: TextFormField(
//                             validator: (input) {
//                               if (input.length < 6) {
//                                 return 'Please provide a password with at least 6 characters';
//                               }
//                             },
//                             onSaved: (input) => _password = input,
//                             decoration: InputDecoration(
//                               border: InputBorder.none,
//                               hintText: "Password",
//                               hintStyle: TextStyle(color: Colors.grey[500]),
//                             ),
//                             obscureText: true,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Container(
//                     height: 57.0,
//                     child: RaisedButton(
//                       onPressed: () {},
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0)),
//                       padding: EdgeInsets.all(0.0),
//                       child: Ink(
//                         decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [
//                                 Color.fromRGBO(180, 148, 251, 1),
//                                 Color.fromRGBO(157, 148, 251, 0.6),
//                               ],
//                               begin: Alignment.centerLeft,
//                               end: Alignment.centerRight,
//                             ),
//                             borderRadius: BorderRadius.circular(10.0)),
//                         child: Container(
//                           constraints:
//                               BoxConstraints(maxWidth: 340.0, minHeight: 50.0),
//                           alignment: Alignment.center,
//                           child: Text(
//                             "Login",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   // RoundedButton(
//                   //   text: "LOGIN",
//                   //   textColor: Colors.white,
//                   //   color: Colors.deepPurple[400],
//                   //   press: () {},
//                   // ),
//                   // Container(
//                   //   height: 50,
//                   //   decoration: BoxDecoration(
//                   //       borderRadius: BorderRadius.circular(10),
//                   //       gradient: LinearGradient(colors: [
//                   //         Color.fromRGBO(157, 148, 251, 1),
//                   //         Color.fromRGBO(157, 148, 251, 0.6),
//                   //       ])),
//                   //   child: Center(
//                   //       child: Text(
//                   //     "Login",
//                   //     style: TextStyle(
//                   //         color: Colors.white, fontWeight: FontWeight.bold),
//                   //   )),
//                   // ),
//                   SizedBox(
//                     height: 70,
//                   ),
//                   Text(
//                     "Forgot Password?",
//                     style: TextStyle(
//                       color: Color.fromRGBO(157, 148, 251, 1),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
