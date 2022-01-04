import 'package:ebook/widgets/more_recomended_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreBook extends StatelessWidget {
  // const MoreBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var designWidthRatio = 390 / screenWidth;
    var designHeightRatio = 844 / screenHeight;
    return
      Container(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              height: 243.51*designHeightRatio,
              width: 302.39*designWidthRatio,
              left: -196.61,
              top: -14.24,

              child: Transform.rotate(
                angle:  -180,
                child: Transform.scale(
                  scale: 1.6,
                  child: Container(

                    child: Image.asset("assets/images/Blob.png"),
                  ),
                ),
              ),

            ),
            Positioned(
              height: 243.51*designHeightRatio,
              width: 302.39*designWidthRatio,
              left: 217.57,
              top: -247.24,

              child: Transform.rotate(
                angle:  -90,
                child: Transform.scale(
                  scale: 1.7,
                  child: Container(

                    child: Image.asset("assets/images/Blob.png"),
                  ),
                ),
              ),

            ),
            Positioned(
              height: 461.87*designHeightRatio,
              width: 573.54*designWidthRatio,
              left: 21.85*designWidthRatio,
              top: 447.97*designHeightRatio,

              child: Transform.rotate(
                angle:  -322,
                child: Transform.scale(
                  scale: .9,
                  child: Container(

                    child: Image.asset("assets/images/Blob.png"),
                  ),
                ),
              ),

            ),
            Positioned(
                height: 44 *designHeightRatio,
                width: 333 * designWidthRatio,
                left: 28 * designWidthRatio,
                top: 52*designHeightRatio,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 44*designWidthRatio,
                        height: 44*designHeightRatio,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Icon(Icons.arrow_back,color: Color(0xFF305F72),size: 20,),),

                    Container(
                      height: 21*designHeightRatio,
                      width: 92*designWidthRatio,
                      child: Text("More Book",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff305F72)
                      ),),
                    ),
                    Container(
                      width: 44*designWidthRatio,
                      height: 44*designHeightRatio,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFFFFFFF),
                      ),
                      child: Icon(Icons.arrow_forward_ios,color: Color(0xFF305F72),size: 20,),),


                  ],
                ),),
            Positioned(

              left: 30 * designWidthRatio,
                top: 128*designHeightRatio,
                child: Container(
                  height: 29 * designHeightRatio,
                  width: 231 * designWidthRatio,
                  child: Text("Top E-Book Reading",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                      color: Color(0xff305F72),
                  ),),
                ),),
            Positioned(

                left: 34.94 * designWidthRatio,
                top: 190 * designHeightRatio,
                child: Row(
                  children: [
                    Container(
                      height: 241.6 * designHeightRatio,
                      width: 160.06 * designWidthRatio,
                      child: ClipRRect(

                        child: Image.network("https://taleaway.com/wp-content/uploads/2020/01/best-book-cover-designs-2019-the-crying-book-heather-christle.jpg",
                        fit: BoxFit.fill,),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Column(
                      children : [Container(
                        height: 111.05* designHeightRatio,
                        width: 116.99 * designWidthRatio,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 101 * designWidthRatio,
                              height: 29 * designHeightRatio,
                              child: Text("Day Four",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff305F72)
                              ),),
                            ),
                            Container(
                              width: 116.99 * designWidthRatio,
                              height: 21.05 * designHeightRatio,
                              child: Text("by Lotz Sarah",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff4F9DBC)
                                ),),
                            ),

                            Container(
                              height: 10.55*designHeightRatio,
                              width: 68.31*designWidthRatio,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(5, (index) {
                                  return Icon(
                                    index < 4 ? Icons.star : Icons.star_border,
                                    size: 13,
                                    color: index<4 ? Colors.amber:Colors.black12,
                                  );}
                                ),),
                            ),
                            Container(
                              width: 78 * designWidthRatio,
                              height: 25.05 * designHeightRatio,
                              child: Text("\$20.00",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff2E2E2E)
                                ),),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40*designHeightRatio,),
                      Container(
                        width: 136 * designWidthRatio,
                        height: 47 * designHeightRatio,
                        decoration: BoxDecoration(
                          color: Color(0xffE35959),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: (){},

                          child: Text("Detail",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                        ),
                      )
                      ]
                    ),
                  ],
                ),),
            Positioned(
                left: 30 *designWidthRatio,
                top: 480 * designHeightRatio,
                child: Container(
                  height: 21*designHeightRatio,
                  width: 164 * designWidthRatio,
                  child: Text("More Recomended",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff305F72)
                  ),),
                ),),
            Positioned(
                left: 329*designWidthRatio,
                top: 480*designHeightRatio,
                child: Container(
                  height: 4*designHeightRatio,
                  width: 25*designWidthRatio,
                  child: Icon(Icons.menu),
                ),),
            Positioned(
                left: 30 * designWidthRatio,
                top: 505 * designHeightRatio,
                child: Container(
                  height: 160 * designHeightRatio,
                  width: screenWidth - 30,
                  child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        // return MoreRecomended(
                        //   title: "The Great",
                        //   author: "by Jake Arnott",
                        //   url: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/power-1577194954.jpg",
                        // );
                        return Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 72.76*designWidthRatio,
                                height: 116.21*designHeightRatio,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/power-1577194954.jpg",fit: BoxFit.fill,),
                                ),
                              ),
                              Container(
                                width: 66*designWidthRatio,
                                height: 14*designHeightRatio,
                                child: Text("by Jake Arnott",style: TextStyle(
                                    fontSize:10,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff4F9DBC)),),
                              ),
                              Container(
                                width: 69*designWidthRatio,
                                height: 16*designHeightRatio,
                                child: Text("The Great",style: TextStyle(
                                    fontSize:14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff305F72)),),
                              ),
                            ],
                          ),
                        );
                      }),
                ),),
          ],
        ),


    );
  }
}
