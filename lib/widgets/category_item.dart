import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  // const CategoryItem({Key? key}) : super(key: key);
  final name;
  final color;
CategoryItem({this.name,this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        width: 100,
        height: 35,

        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,

        ),
        child: Text(name,style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.white
        ),),
      ),
    );
  }
}
