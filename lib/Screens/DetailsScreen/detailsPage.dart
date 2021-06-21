import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:isi/Screens/Model/Item.dart';


// ignore: must_be_immutable
class DetailScreen extends StatefulWidget {

  final Item item;
  int index;

  DetailScreen({required this.item, required this.index});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(

          gradient: LinearGradient(
              colors: [Color(0xfff29a94),Color(0xFF054727)],
              /*begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),*/
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),


        ),
        child: Column(
          children: <Widget>[
            SafeArea(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    _topBar(),
                    _itemImage(),
                  ],
                )),
            SizedBox(height: 20),
            Expanded(child: _bottomSheet()),
          ],
        ),
      ),
      bottomNavigationBar: _bottomAddToCart(),
    );
  }

  Widget _topBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                //  color: AppColors.gray,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Icon(
                Icons.navigate_before,
              //  color: AppColors.black,
              ),
            ),
          ),
          Container(
           // child: SvgPicture.asset("assets/images/signs.svg",height: 30,width: 20,),
          )
        ],
      ),
    );
  }

  Widget _itemImage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(
            height: 200, width: 200, image: AssetImage(widget.item.image)),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                //  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(width: 8),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                 // color: AppColors.gray,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(width: 8),
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
               //   color: AppColors.gray,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ],
        )
      ],
    );
  }

  _bottomSheet() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white70, Colors.white],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.item.title,
            style: TextStyle(
                fontFamily: "Raleway",
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                letterSpacing: 1.1),
          ),
          SizedBox(height: 5),

          SizedBox(height: 10),
          _priceCart(),
          SizedBox(height: 10),
          Text(
            "Description",
            style: TextStyle(
              fontFamily: "Raleway",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            widget.item.desc,
            style: TextStyle(
              fontFamily: "Raleway",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            //  color: AppColors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _priceCart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            color: Color(0xfff29a94),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Price : "),
            ],
          ),
        ),
        Text(
           widget.item.price+" \LE",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              fontFamily: "Raleway",
            //  color: AppColors.black),
        )
        )
      ],
    );
  }

  Widget _bottomAddToCart() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white70, Colors.white],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),

              border:
              Border.all(color: Color(0xfff29a94), width: 2.0),


            ),


            child: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
          ),
          Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Color(0xfff29a94)
              ),
              child: Text(
                "Book Now",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    fontFamily: "Raleway",
                    color: Colors.black,
              )),
          )
        ],
      ),
    );
  }
}