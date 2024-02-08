// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SideNavModel{
  String? title;
  IconData? iconData;
  String? subtitle;


  SideNavModel(
      {
        this.title,
        this.iconData,
        this.subtitle,
      }
      );
}

final List<SideNavModel> sideNavList = [
  SideNavModel(
    title: 'Home',
    iconData: Icons.home,
    subtitle: 'This is home'

  ),
  SideNavModel(
    title: 'About',
    iconData: Icons.account_box_outlined,
    subtitle: 'This is about'

  ),
  SideNavModel(
    title: 'Camera',
    iconData: Icons.camera,
    subtitle: 'This is camera'

  ),
  SideNavModel(
    title: 'Bike',
    iconData: Icons.bike_scooter,
    subtitle: 'This is bike'

  ),

];