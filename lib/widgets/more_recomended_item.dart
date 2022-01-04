import 'package:flutter/material.dart';

class MoreRecomended extends StatelessWidget {
  // const MoreRecomended({Key? key}) : super(key: key);
final String url;
final String author;
final String title;
MoreRecomended({this.author,this.title,this.url});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 72.76,
            height: 116.21,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(url,fit: BoxFit.fill,),
            ),
          ),
          Container(
            width: 65,
            height: 14,
            child: Text(author,style: TextStyle(
                fontSize:10,
            fontWeight: FontWeight.w500,
            color: Color(0xff4F9DBC)),),
          ),
          Container(
            width: 69,
            height: 16,
            child: Text(title,style: TextStyle(
                fontSize:14,
                fontWeight: FontWeight.bold,
                color: Color(0xff305F72)),),
          ),
        ],
      ),
    );
  }
}
