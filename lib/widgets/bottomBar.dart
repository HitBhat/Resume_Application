import 'package:flutter/material.dart';
import 'package:portfolio_application/screens/experience.dart';
import '../screens/about.dart';
import '../screens/education.dart';

class BarItem {
  String name;
  IconData iconData;
  Color color;
  BarItem({this.color, this.iconData, this.name});
}

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': AboutPage(), 'title': 'About'},
    {'page': EducationExperience(), 'title': 'Education'},
    {'page': Experience(), 'title': 'Experience'},
  ];


  final List<BarItem> _barItems = [
    BarItem(
      color: Colors.orangeAccent,
      name: 'About',
      iconData: Icons.home,
    ),
    BarItem(
      color: Colors.pinkAccent,
      name: 'Education',
      iconData: Icons.book,
    ),
    BarItem(
      color: Colors.amberAccent,
      name: 'Experience',
      iconData: Icons.info_outline,
    ),
  ];
  int _selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: AnimatedBottomBar(
        barItem: _barItems,
        animationDuration: Duration(
          milliseconds: 150,
        ),
        onBarTap: (index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
      ),
    );
  }
}
//FOR BOTTOM NAVIGATION BAR WE HAVE TO MANUALLY SELECT THE SCREEN

class AnimatedBottomBar extends StatefulWidget {
  final List<BarItem> barItem;
  final Duration animationDuration;
  final Function onBarTap;
  AnimatedBottomBar({
    this.barItem,
    this.animationDuration = const Duration(
      milliseconds: 1000,
    ),
    this.onBarTap,
  });
  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar>
    with TickerProviderStateMixin {
  int _selectedButton = 0;
  List<Widget> _createBarItem() {
    List<Widget> _barItems = List();
    for (int i = 0; i < widget.barItem.length; i++) {
      bool _isSelected = _selectedButton == i;
      _barItems.add(
        InkWell(
          splashColor: Colors.transparent,
          onTap: () {
            setState(
              () {
                _selectedButton = i;
                widget.onBarTap(_selectedButton);
              },
            );
          },
          child: AnimatedContainer(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            duration: widget.animationDuration,
            decoration: BoxDecoration(
              color: _isSelected
                  ? widget.barItem[i].color.withOpacity(0.1)
                  : Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  widget.barItem[i].iconData,
                  color: _isSelected ? widget.barItem[i].color : Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                AnimatedSize(
                  curve: Curves.easeInOutBack,
                  duration: widget.animationDuration,
                  vsync: this,
                  child: Text(
                    _isSelected ? widget.barItem[i].name : "",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: widget.barItem[i].color,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return _barItems;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black26,
        //     offset: Offset(4.0, 4.0),
        //     blurRadius: 15,
        //     spreadRadius: 1,
        //   ),
        // ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 24,
          left: 8,
          right: 8,
          top: 8,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _createBarItem(),
        ),
      ),
    );
  }
}



//Learned How to use bottom bar
// class TabsScreen extends StatefulWidget {
//   @override
//   _TabsScreenState createState() => _TabsScreenState();
// }

// class _TabsScreenState extends State<TabsScreen> {
//   final List<Map<String, Object>> _pages = [
//     {'page': AboutPage(), 'title': 'About'},
//     {'page': EducationExperience(), 'title': 'Education'},
//     // InfoPage()
//   ];
//   int _selectedPageIndex = 0;
//   void _selectPage(int index) {
//     setState(() {
//       _selectedPageIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_pages[_selectedPageIndex]['title']),
//       ),
//       body: _pages[_selectedPageIndex]['page'],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Theme.of(context).primaryColor,
//         // unselectedItemColor: Colors.white,
//         selectedItemColor: Colors.amber,
//         currentIndex: _selectedPageIndex,
//         onTap: _selectPage,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.book),
//             title: Text('Education'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.info_outline),
//             title: Text('Info'),
//           ),
//         ],
//       ),
//     );
//   }
// }
