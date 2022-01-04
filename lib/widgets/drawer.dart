import "package:flutter/material.dart";

class DrawerItem extends StatelessWidget {
  // const DrawerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        height: MediaQuery.of(context).size.height - 100,
        width: 100,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Text(" E-Book"),),

            SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.book),
              title: Text("More Books"),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Shopping Cart"),
            ),
            ListTile(
              leading: Icon(Icons.threesixty),
              title: Text("Orders"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
          ],
        ),
      ),
    );
  }
}
