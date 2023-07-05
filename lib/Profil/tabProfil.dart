import 'package:flutter/material.dart';

import '../Home/HomePage.dart';

class TabProfil {
  TabProfil({
    this.imagePath ,
    this.index = 0,
    this.selectedImagePath,
    this.isSelected = false,
    this.animationController,
  });

  Widget? imagePath;
  Widget? selectedImagePath;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabProfil> tabIconsList = <TabProfil>[
    TabProfil(
      imagePath: Text("DONNEES",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      selectedImagePath: GradientText("DONNEES",
  style: TextStyle(
    decoration: TextDecoration.underline,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),),
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabProfil(
      imagePath: Text("PHOTO",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      selectedImagePath: GradientText("PHOTO",
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabProfil(
      imagePath: Text("MOT DE PASSE",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      selectedImagePath: GradientText("MOT DE PASSE",
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      index: 2,
      isSelected: false,
      animationController: null,
    ),

  ];
}