import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:somphotapp/screen/home.dart';


class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  // ตัวควบคุมของ tab view
  late PersistentTabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  // กำหนดหน้าที่จะแสดงในแต่ละ tab
  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      Center(child: Text("Search")),
      Center(child: Text("Profile")),
      Center(child: Text("Settings")),
      Center(child: Text("Settings")),
    ];
  }

  // กำหนดไอคอนและชื่อในแต่ละ tab
  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        // activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.search),
        title: ("Search"),
        // activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.photo_camera),
        title: ("Photo"),
        // activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.notifications),
        title: ("Notifications"),
        // activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.settings),
        title: ("Settings"),
        // activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: Colors.black, // สีของแถบเมนู
      handleAndroidBackButtonPress: true, // การจัดการปุ่ม back บน Android
      resizeToAvoidBottomInset: true, // ป้องกันการซ่อนแถบเมื่อแป้นพิมพ์แสดงขึ้นมา
      stateManagement: true, // ใช้ State Management // ซ่อนแถบเมนูเมื่อแป้นพิมพ์แสดงขึ้นมา
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(1.0),
        colorBehindNavBar: Colors.white,
      ), 
      navBarStyle:
          NavBarStyle.style1,  
    );
  }
}
