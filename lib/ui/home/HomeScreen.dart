import 'dart:math';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_login_screen/constants.dart';
import 'package:uni_unite_app/model/User.dart';
// import 'package:flutter_login_screen/ui/auth/AuthScreen.dart';
import 'package:uni_unite_app/ui/pages/messages.dart';
import 'package:uni_unite_app/ui/pages/profile.dart';
import 'package:uni_unite_app/ui/pages/swiping_feed.dart';
// import 'package:flutter_login_screen/ui/services/Authenticate.dart';
// import 'package:flutter_login_screen/ui/utils/helper.dart';
// import 'package:flutter_login_screen/widgets/BottomNavBar.dart';

import '../../main.dart';

// FireStoreUtils _fireStoreUtils = FireStoreUtils();

class HomeScreen extends StatefulWidget {
  final User user;

  HomeScreen({Key key, @required this.user}) : super(key: key);

  @override
  State createState() {
    print(user.toString());
    return _HomeState(user);
  }
}

class _HomeState extends State<HomeScreen> {
  final User user;
  PageController pageController;
  int pageIndex = 0;

  _HomeState(this.user);

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  //METHOD TO DISPOSE OF THE PAGE CONTROLLER WHEN NOT ON THE HOME PAGE
  // @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Color(0xff800000),
              ),
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.black),
              ),
              leading: Transform.rotate(
                  angle: pi / 1,
                  child: Icon(Icons.exit_to_app, color: Colors.black)),
              onTap: () async {
                user.active = false;
                //user.lastOnlineTimestamp = Timestamp.now();
                //_fireStoreUtils.updateCurrentUser(user, context);
                //await FirebaseAuth.instance.signOut();
                //MyAppState.currentUser = null;
                //pushAndRemoveUntil(context, AuthScreen(), false);
              },
            ),
          ],
        ),
      ),
      // appBar: AppBar(
      //   title: Text(
      //     'Home',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   iconTheme: IconThemeData(color: Colors.black),
      //   backgroundColor: Colors.white,
      //   centerTitle: true,
      // ),
      body: PageView(
        children: <Widget>[
          //ADD PAGES
          SwipingFeed(),
          Messages(),
          Profile(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: pageIndex,
        onTap: onTap,
        backgroundColor:
            Colors.transparent, //Color(0xff800000).withOpacity(0.9),
        border: Border.all(
          color: Color(0xff800000).withOpacity(0.3),
        ),
        activeColor: Color(0xff800000),
        inactiveColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     mainAxisSize: MainAxisSize.max,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       displayCircleImage(user.profilePictureURL, 125, false),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(user.firstName),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(user.email),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(user.phoneNumber),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(user.userID),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
  //     bottomNavigationBar: Row(
  //       children: <Widget>[
  //         buildNavBarItem(Icons.whatshot, 0),
  //         buildNavBarItem(Icons.group, 1),
  //         buildNavBarItem(Icons.account_circle, 2)
  //       ],
  //     ),
  //   );
  // }

  // Widget buildNavBarItem(IconData icon, int index) {
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         _currentIndex = index;
  //       });
  //     },
  //     child: Container(
  //       height: 60,
  //       decoration: BoxDecoration(
  //           color: index == _currentIndex ? Colors.pink : Colors.white),
  //       child: Icon(icon),
  //     ),
  //   );
  // }
}
