import 'package:flutter/material.dart';
import 'package:isi/Screens/Courses/CoursesScreen.dart';
import 'package:isi/Screens/Home/homeScreen.dart';
final Map<String, WidgetBuilder> routes = {};

const String homePage ="home";
const String coursesPage="courses";

Route<dynamic> controller(RouteSettings settings){
  switch(settings.name) {
    case homePage :
      return MaterialPageRoute(builder: (context) => HomePage());
    case coursesPage :
      return MaterialPageRoute(builder: (context) => SchoolList());
    default :
      throw("there is no page with this name ");

  }
}