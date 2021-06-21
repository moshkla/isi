import 'package:flutter/material.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  _ItemsListState createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              print("object");
            },
            child: ListTile(
              title: Text("item"),
            ),
          ),
        ),
      ),
    );
  }
}
