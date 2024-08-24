import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NavigationService extends GetxService {
  var currentIndex = 0.obs;
  var lastIndex = 0.obs;

  //all pages
  List<Widget> pages() {
    return [
      //  HomePage(),
      // const SearchPage(),
      // AddThreadsPage(),
      // NotificationPage(),
      // ProfilePage()
    ];
  }

  //update index
  updateIndex(int index) {
    lastIndex.value = currentIndex.value;
    currentIndex.value = index;
  }


  //back to previous page
  backToPreviousPage() {
    currentIndex.value = lastIndex.value;
  }
}
