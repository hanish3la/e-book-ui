import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RecommendedItem extends StatelessWidget {
  // const RecommendedItem({Key? key}) : super(key: key);
String url;
String title;
String author;
int stars;
double percision;
RecommendedItem({this.url,this.percision,this.author,this.title,this.stars});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 331,
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Image.network(url,width: 50.68,
                  height: 76.5,fit: BoxFit.fill,),),
            Container(
    width: 120,
              height: 65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff305F72),
                  ),),
                  Text(author,style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4F9DBC),
                  ),),
                  Row(
                    children: List.generate(5, (index) {
    return Icon(
    index < stars ? Icons.star : Icons.star_border,
      color: index<stars ? Colors.amber:Colors.black12,
    );}
                  ),),


                ],
              ),
            ),
            Container(
              width: 62.54,
              height: 60,
              child: CircularPercentIndicator(
                animation: true,
                animationDuration: 1200,
                radius: 60.0,
                lineWidth: 5.0,
                percent: percision / 100,
                center: new Text("$percision %"),
                progressColor: Colors.yellow,
                backgroundColor: Colors.blueGrey,
                circularStrokeCap: CircularStrokeCap.butt,



              ),
            )

          ],
        ),
      ),
    );
  }
}
