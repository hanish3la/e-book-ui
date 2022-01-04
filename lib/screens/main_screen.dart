import 'package:ebook/models/trending.dart';
import 'package:ebook/screens/more_book_screen.dart';
import 'package:ebook/widgets/category_item.dart';
import 'package:ebook/widgets/drawer.dart';
import 'package:ebook/widgets/menu_drawer.dart';
import 'package:ebook/widgets/recommended_item.dart';
import 'package:ebook/widgets/trend_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
List<String> categories = ["comics","Recipe","Novel","Biography"];

double _width = 390;
double _height = 160;
bool isTapped = true;

// List<Widget> screens = [MoreBook(),];
  List<Trending> trendingBooks = [
  Trending(author: "by Jake Amott",title: "The Fatal Tree",url:"https://images.idgesg.net/images/article/2020/07/stack_of_books_one_open_scattering_flying_letters_language_reading_education_dictionary_by_domin_domin_gettyimages-157719194_abstract_binary_by_aleksei_derin_gettyimages-914850254_cso_2400x1600-100853104-large.jpg?auto=webp&quality=85,70"),
  Trending(author: "by Lotz Sarah",title: "Day Four",url: "https://m.media-amazon.com/images/I/41aFNylX+vL._AC_SY1000_.jpg"),
  Trending(author: "by Lotz Sarah",title: "Day Four",url: "https://m.media-amazon.com/images/I/41aFNylX+vL._AC_SY1000_.jpg"),
  Trending(author: "by Lotz Sarah",title: "Day Four",url: "https://macmillan-dam.captureweb.co.uk/cdn/macmillan/previews/439664/d2600cec4c0f09bf8e6187a83a066343/0/14665546cf5662d409143d004ffc0c54/131898933.jpg"),
  Trending(author: "by Lotz Sarah",title: "Day Four",url: "https://macmillan-dam.captureweb.co.uk/cdn/macmillan/previews/439664/d2600cec4c0f09bf8e6187a83a066343/0/14665546cf5662d409143d004ffc0c54/131898933.jpg"),
Trending(author: "by Jake Amott",title: "The Fatal Tree",url:"https://images.idgesg.net/images/article/2020/07/stack_of_books_one_open_scattering_flying_letters_language_reading_education_dictionary_by_domin_domin_gettyimages-157719194_abstract_binary_by_aleksei_derin_gettyimages-914850254_cso_2400x1600-100853104-large.jpg?auto=webp&quality=85,70"),
];

void _updateSelectedIndex(int index){
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    var screenHieght = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var designWidthRatio = 390/screenWidth;
    var designHightRatio = 844/screenHieght;
      return Scaffold(
      backgroundColor: Color(0xFFEAF9FE),
      drawer: DrawerItem(),
      // endDrawer: Drawer(),
      // appBar: AppBar(
      //
      //   actions: [
      //     CircleAvatar(
      //       backgroundColor: Colors.amberAccent,
      //       radius: 26,
      //     )
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _updateSelectedIndex,
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        iconSize: 26.24,
        unselectedFontSize: 12,
        items:const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.explore),
          label: "Explore",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.book),
              label: "Reading"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark),
              label: "BookMark"),
        ],
      ),
      body: SafeArea(
        child: _selectedIndex == 1 ? MoreBook() : Container(
          height: screenHieght,
          width: screenWidth,
          child: Stack(
            children: [
              // Column
              Positioned(
                height: 243.51 * designHightRatio,
                width: 302.39 * designWidthRatio,
                left: -206.54,
                top: -59.8,

                child: Transform.scale(
                  scale: 1.8,

                  child: Container(

                    child: Image.asset("assets/images/Blob.png"),
                  ),
                ),
                // CustomPaint(
                //   // size: Size(302.39, 243.51), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                //   painter: ColoredPolygon(),
                //   child: Container(),
                // ),
              ),

              Positioned(
                height: 243.51*designHightRatio,
                width: 302.39*designWidthRatio,
                left: 239.57,
                top: -253.24,

                child: Transform.rotate(
                  angle:  90,
                  child: Transform.scale(
                    scale: 1.6,
                    child: Container(

                      child: Image.asset("assets/images/Blob.png"),
                    ),
                  ),
                ),
                // CustomPaint(
                //   // size: Size(302.39, 243.51), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                //   painter: ColoredPolygon(),
                //   child: Container(),
                // ),
              ),
              Positioned(
                height: 243.51*designHightRatio,
                width: 302.39*designWidthRatio,
                left: -240.63,
                top: 610,

                child: Transform.rotate(
                  angle:  -142,
                  child: Transform.scale(
                    scale: 1.5,
                    child: Container(

                      child: Image.asset("assets/images/Blob.png"),
                    ),
                  ),
                ),
                // CustomPaint(
                //   // size: Size(302.39, 243.51), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                //   painter: ColoredPolygon(),
                //   child: Container(),
                // ),
              ),
              Positioned(
                height: 243.51*designHightRatio,
                width: 302.39*designWidthRatio,
                left: 251.85,
                top: 506,

                child: Transform.rotate(
                  angle:  -142,
                  child: Transform.scale(
                    scale: 1,
                    child: Container(

                      child: Image.asset("assets/images/Blob.png"),
                    ),
                  ),
                ),
                // CustomPaint(
                //   // size: Size(302.39, 243.51), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                //   painter: ColoredPolygon(),
                //   child: Container(),
                // ),
              ),
              Positioned(
                left: 336,
                top: 23,
                height: 26*designHightRatio,
                width: 26*designWidthRatio,
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://cdn.britannica.com/24/189624-050-F3C5BAA9/Mona-Lisa-oil-wood-panel-Leonardo-da.jpg",),
                  backgroundColor: Colors.transparent,
                ),),
              MenuDrawer(),
              Positioned(

                left: 29,
                top: 68,
                child: Container(
                  height: 44*designHightRatio,
                  width: 332*designWidthRatio,

                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,

                  ),
                  child:Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width:131*designWidthRatio,
                        height: 16*designHightRatio,
                        alignment: Alignment.center,
                        child: TextField(
                           decoration: InputDecoration(
                             fillColor: Colors.white,
                             focusColor:  Colors.white12,
                             hintText: "Search for a book here  ",
                             hintStyle: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w500),
                             // border: OutlineInputBorder(
                             //   borderSide: BorderSide(
                             //     color: Colors.red,//this has no effect
                             //   ),
                             //   borderRadius: BorderRadius.circular(10.0),
                             // ),
                             border: InputBorder.none,


                           ),
                        ),
                      ),
                      Icon(Icons.search,size: 30,color: Color(0xff305F72),),
                    ],
                  ),
                ),
              ),
              Positioned(
                height: 29*designHightRatio,
                width: 125*designWidthRatio,
                left: 30,
                top: 133,
                child: Text("Categories",style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff305F72)
                ),),
              ),
              Positioned(
                  height: 36*designHightRatio,
                  width: (screenWidth - 50 ) * designWidthRatio,
                  left: 33,
                  top: 186,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                    itemCount: categories.length,

                      itemBuilder: (BuildContext context,index) {
                        return CategoryItem(
                            name: categories[index],
                            color: Color(0xff305F72),
                      );}),),
              Positioned(
                  height: 29*designHightRatio,
                  width: 178*designWidthRatio,
                  left: 30,
                  top: 261,
                  child: Text("Trending Books",style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff305F72)
                  ),),),
              Positioned(
                  height: 236*designHightRatio,
                  width: (screenWidth - 30) * designWidthRatio,
                  left: 29,
                  top: 312,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: trendingBooks.length,

                      itemBuilder: (BuildContext context,index) {
                        return TrendingItem(
                          title: trendingBooks[index].title,
                          author: trendingBooks[index].author,
                          url: trendingBooks[index].url,
                        );}),),
              Positioned(
                  left: 1,
                  bottom: 0,
                  child: AnimatedContainer(
                    width: _width * designWidthRatio,
                    height: _height * designHightRatio,
                    duration: Duration(milliseconds: 100),
                    curve: Curves.fastOutSlowIn,
                    // margin: const EdgeInsets.symmetric(horizontal: 1),
                    decoration: BoxDecoration(
                      color: Color(0xCC4F9DBC),

                      borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25), )

                    ),
                    child:Stack(
                      children: [
                        Positioned(
                            width:31.69*designWidthRatio ,
                            height: 31.69*designHightRatio,
                            left: _width/2 - 10,
                            top: 0,
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  if(isTapped){
                                    _height = screenHieght -200;
                                  }else{
                                    _height = 160;
                                  }
                                  isTapped = !isTapped;


                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Color(0xff305F72),
                                  child: Icon(!isTapped ?Icons.arrow_drop_down_circle_rounded :Icons.arrow_drop_up_outlined,
                                  color: Colors.white,)),
                            ),),
                        Positioned(
                            left: 33,
                            top: 35,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(

                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("More Recomended",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),),
                                    SizedBox(width: screenWidth - 230,),
                                    Icon(Icons.menu,size: 14,),

                                  ],
                                ),

                                Container(
                                  height: (_height - 60)*designHightRatio,
                                  width: (_width-50)*designWidthRatio,
                                  child: ListView.builder(
                                      itemCount:10,
                                      itemBuilder: (BuildContext context, index){
                                        return RecommendedItem(url: "https://m.media-amazon.com/images/I/41aFNylX+vL._AC_SY1000_.jpg",
                                          author: "by Jake Amott",title: "The Fatal Tree",
                                          percision: 65,
                                        stars: 3,);
                                      } ),
                                )
                              ],
                            ),)
                      ],
                    ),

                  ))




            ],
          )
        ),
      ),
    );
  }
}


