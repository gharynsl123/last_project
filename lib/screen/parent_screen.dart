import 'package:flutter/material.dart';
import 'package:last_project/screen/menus/home_menu.dart';
import 'menus/explore_menu.dart';
import 'menus/profile_menu.dart';

class ParentScreen extends StatefulWidget {
  const ParentScreen({ Key? key }) : super(key: key);

  @override
  State<ParentScreen> createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  int _currentIndex= 0;

  final navigate= [
    const HomeMenu(),
    const ExploreMenu(),
    const ProfileMenu(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigate[_currentIndex],
      bottomNavigationBar: Row(
        children: [
          buildNavBarItem(const AssetImage('assets/images/home.png'), 0),
          buildNavBarItem(const AssetImage('assets/images/maps.png'), 1),
          buildNavBarItem(const AssetImage('assets/images/user.png'), 2),
        ],
      ),
    );
  }

  Widget buildNavBarItem(AssetImage image, int index){
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        child: Image(
          color: index == _currentIndex ? Colors.black87 : Colors.grey,
          image: AssetImage(image.assetName),
          height: 50,
          width: MediaQuery.of(context).size.width / 3,
        ),
        decoration: index == _currentIndex
            ? BoxDecoration(
                border: const Border(
                  bottom: BorderSide(
                    width: 2.5,
                    color: Color(0xFF69E4A5),
                  ),
                ),
                gradient: LinearGradient(colors: [
                  const Color(0xFF69E4A5).withOpacity(0.2),
                  const Color(0xFF69E4A5).withOpacity(0.015),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
              )
            :const BoxDecoration(),
      ),
    );
  }
}