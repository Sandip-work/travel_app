import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/favourites.dart';
import 'package:travelapp/visited_places.dart';

import 'image_details.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
          debugShowCheckedModeBanner: false,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  static  final List<Widget> _widgetOptions = <Widget>[
    const explore(),
    const Favourites(),
    const Visited(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Trip'),
        flexibleSpace: Container(
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: <Color>[
        Color(0xffC9F5B6),
        Color(0xff0DCD9F),
        ],
        ),
        ),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),

      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite Places',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work),
            label: 'Visited Places',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff0DCD9F),
        onTap: (int index){
          _onItemTapped(index);
        },
      ),
    );
  }
}

class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children: <Widget>[
                  Container(
                    width: 400,
                    margin: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/2082103/pexels-photo-2082103.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                        child: Text("France",
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      textAlign: TextAlign.left,)),
                  ),
                ]
            ),
            Stack(
                children: <Widget>[
                  Container(
                    width: 400,
                    margin: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/930595/pexels-photo-930595.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(30.0),
                    child:  Align(
                      alignment: Alignment.topLeft,
                        child: Text("Spain",
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),)),
                  ),
                ]
            ),
            Stack(
                children: <Widget>[
                  Container(
                    width: 400,
                    margin: const EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2018/07/20/17/25/statue-of-liberty-3551121_960_720.jpg'),
                      ),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.all(30.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                        child: Text("U S",
                      style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),)),
                  ),
                ]
            ),
          ],
        ),
      ),
      onTap: (){
        Navigator.of(context, rootNavigator: false).push(MaterialPageRoute(builder: (_) => const ImageDetails(),maintainState: false));
        // Navigator.push(context , MaterialPageRoute(builder: (_) => const Explore()));
      },
    );
  }
}


