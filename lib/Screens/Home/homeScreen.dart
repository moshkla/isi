import 'package:flutter/material.dart';
import 'package:isi/Screens/Courses/CoursesScreen.dart';
import 'package:isi/Screens/DetailsScreen/detailsPage.dart';
import 'package:isi/Screens/Model/Item.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  Widget cards(image, title) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
         boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 6,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              height: 80,
            ),
            SizedBox(
              height: 5,
            ),
            Text(title,
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15,color: Colors.black,)),
            Container(

                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 4),
                //color: Colors.pink,

                ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     drawer: Drawer(

       child: ListView(
         // Important: Remove any padding from the ListView.
         padding: EdgeInsets.zero,
         children: <Widget>[
           DrawerHeader(
             decoration: BoxDecoration(
               color: Colors.black26,
             ),
             child: Text('Drawer Header'),
           ),
           ListTile(
             title: Text('Item 1'),
             onTap: () {
               // Update the state of the app.
               // ...
             },
           ),
           ListTile(
             title: Text('Item 2'),
             onTap: () {
               // Update the state of the app.
               // ...
             },
           ),
         ],
       ),
     ),

      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(

            color: Color(0xFF054727),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Icon(
                  Icons.home,
                  size: 30,
                  color: _currentIndex == 0 ? Color(0xfff29a94) : Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: Icon(
                  Icons.map,
                  size: 30,
                  color: _currentIndex == 1 ? Color(0xfff29a94) : Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: Icon(
                  Icons.person,
                  size: 30,
                  color: _currentIndex == 2 ? Color(0xfff29a94) : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xfff29a94),
      body: Stack(
        children: <Widget>[

          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),

              color: Color(0xFF054727),
            ),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.only(left: 90, bottom: 20),
            width: 299,
            height: 279,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/im.jpg'),
            ),
            decoration: BoxDecoration(
                color: Color(0xfff29a94),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(160),
                    bottomLeft: Radius.circular(290),
                    bottomRight: Radius.circular(160),
                    topRight: Radius.circular(10))),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 70,
                ),
                Text("HELLO",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Colors.white ,
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(1),
                              offset: Offset(5, 5),
                              blurRadius: 10),
                        ])),
                Text("EVERYONE",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(1),
                              offset: Offset(5, 5),
                              blurRadius: 10),
                        ])),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: TextField(
                    cursorColor: Theme.of(context).primaryColor,
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    decoration: InputDecoration(
                        hintText: "Search...",
                        suffixIcon: Material(
                          elevation: 2.0,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          child: Icon(Icons.search),
                        ),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
                  ),
                ),
                Container(
                  height: 30,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 10,
                      padding: EdgeInsets.all(10),


                    children: [

                      GestureDetector(
                          onTap: () => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => SchoolList())),
                          child:

                              cards("assets/images/icdl1.png", 'ICDL')),
                      cards("assets/images/programming.png", 'PROGRAMING'),
                      cards("assets/images/graphic.png", 'GRAPHICS'),
                      cards("assets/images/network.png", 'NETWORK'),
                    ],
                  ),
                )
              ],
            ),

          ),
        ],
      ),
    );
  }
}
