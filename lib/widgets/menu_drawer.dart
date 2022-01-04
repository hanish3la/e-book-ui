import 'package:flutter/material.dart';
class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 30,
      top: 28.23,
      height: 14.67,
      width: 22,
      child: GestureDetector(
        onTap: (){
          Scaffold.of(context).openDrawer();
        },
        child: Icon(
          Icons.menu,
          size: 30,),
      ),
    );
  }
}