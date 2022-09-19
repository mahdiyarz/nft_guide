import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NFTProvider with ChangeNotifier {
  bool isPullRight = true;

  Future isFirstPull() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstPull = prefs.getBool('firstPull') ?? true;

    if (firstPull) {
      isPullRight = false;
    } else {
      isPullRight = true;
    }
    notifyListeners();
  }

  Future dragHorizontal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('firstPull', false);
  }

  bool isClick = true;

  Future isFirstClick() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstClick = prefs.getBool('firstClick') ?? true;

    if (firstClick) {
      isClick = false;
    } else {
      isClick = true;
    }
    notifyListeners();
  }

  Future clickOnChapter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('firstClick', false);
  }

  bool isDrag = true;

  Future isFirstDrag() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstDrag = prefs.getBool('firstDrag') ?? true;

    if (firstDrag) {
      isDrag = false;
    } else {
      isDrag = true;
    }
    notifyListeners();
  }

  Future dragVerticalDown() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('firstDrag', false);
  }
}
