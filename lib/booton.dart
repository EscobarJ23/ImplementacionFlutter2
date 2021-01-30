import 'package:flutter/material.dart';
import 'package:implementacionflutter/main.dart';
import 'package:implementacionflutter/map.dart';

class BottomNavWicom extends StatefulWidget {
  BottomNavWicom({Key key, this.index}) : super(key: key);
  final int index;
  @override
  _BottomNavWicom createState() => _BottomNavWicom();
}

class _BottomNavWicom extends State<BottomNavWicom> {
  int indexactual;
  @override
  void initState() {
    indexactual = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        boxShadow: [
          BoxShadow(
            color: Colors.lightBlueAccent,
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: indexactual,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.add_chart),
              label: "Storage",
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: "Mapa",
              backgroundColor: Colors.amber),
        ],
        onTap: (index) {
          setState(() {
            indexactual = index;
            if (indexactual == 0) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyHomePage(title: 'SQLite Flutter')),
                  (route) => false);
            }
            if (indexactual == 1) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MapsSample()),
                  (route) => false);
            }
          });
        },
      ),
    );
  }
}
