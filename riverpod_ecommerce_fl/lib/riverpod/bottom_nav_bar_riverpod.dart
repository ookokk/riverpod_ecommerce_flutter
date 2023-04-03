import 'package:flutter/cupertino.dart';
import 'package:riverpod_ecommerce_fl/view/basket/basket.dart';
import 'package:riverpod_ecommerce_fl/view/favorite/favorite.dart';
import 'package:riverpod_ecommerce_fl/view/home/home.dart';

class BottomNavBarRiverpod extends ChangeNotifier {
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Homepage"),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.heart), label: "Favorites"),
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.bag), label: "Basket"),
  ];

  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  String appbarTitle() {
    switch (currentIndex) {
      case 0:
        return "Homepage";
      case 1:
        return "Favorites";
      case 2:
        return "Basket";
      default:
        return "Empty";
    }
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return Home();
      case 1:
        return Favorite();
      case 2:
        return Basket();
      default:
        return Home();
    }
  }
}
