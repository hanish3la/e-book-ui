import 'package:flutter/material.dart';

class TrendingItem extends StatelessWidget {
  // const TrendingItem({Key? key}) : super(key: key);
  String url;
  String title;
  String author;
TrendingItem({this.url,this.author,this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(right: 5),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child:Image.network(url,height: 180,width: 120,
              fit: BoxFit.fill,),

          ),
          SizedBox(height: 8,),
          Text(author,style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff4F9DBC),
          ),),
          SizedBox(height: 8,),
          Text(title,style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color(0xff305F72),
          ),),


        ],
      ),
    );
  }
}
