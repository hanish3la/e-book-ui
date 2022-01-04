import 'package:flutter/material.dart';


class ReorderListviewExample extends StatefulWidget {
  const ReorderListviewExample({Key key}) : super(key: key);


  @override
  _ReorderListviewExampleState createState() => _ReorderListviewExampleState();
}

class _ReorderListviewExampleState extends State<ReorderListviewExample> {
  final List<String> _list = [
    "list item 1",
    "list item 2",
    "list item 3",
    "list item 4",
    "list item 5",
  ];

  void reorderList(int oldIndex,int newIndex){
    if(newIndex > oldIndex){
      newIndex -=1;
    }
    setState(() {
      final String _item = _list.removeAt(oldIndex);
      _list.insert(newIndex, _item);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ReorderableListView(
            onReorder: reorderList,
            padding: const EdgeInsets.all(10.0),
            children: List.generate(_list.length,
                    (index)=> Container( padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      color: Colors.teal.withOpacity(0.2),
                      key: ValueKey(index),
                      child: Text(
                        _list[index],

                        style: Theme.of(context).textTheme.headline6,
                      ),)

            ),
          ),
        ),
      ),
    );
  }
}
