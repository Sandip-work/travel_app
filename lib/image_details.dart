
import 'package:flutter/material.dart';
import 'package:travelapp/favourites.dart';
import 'package:travelapp/spanish_islands.dart';
import 'package:travelapp/visited_places.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Explore();
  }
}


class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MyStatefulWidget();
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
      body: _widgetOptions.elementAt(_selectedIndex),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child:
                Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 8),
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: const Image(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1583422409516-2895a77efded?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                          ),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(24.0),
                        child: const Text("Barcelona",
                          style: TextStyle(color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                          textAlign: TextAlign.left,),
                      ),
                    ],
                ),
                ),
                Expanded(child:
                Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(right: 8),
                        width: 400,
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: const Image(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1620677368158-32b1293fac36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        child: const Text("Granada",
                          style: TextStyle(color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),),
                      ),
                    ]
                ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(child:
                Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 8),
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: const Image(
                            image: NetworkImage(
                                'https://img.traveltriangle.com/blog/wp-content/uploads/2018/04/spanish-island-cover-1.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(24.0),
                        child: const Text("Spanish Islands",
                          style: TextStyle(color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),),
                      ),
                    ],
                ),
                ),
                Expanded(child:
                Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(right: 8),
                        width: 400,
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: const Image(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1539037116277-4db20889f2d4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        child: const Text("Madrid",
                          style: TextStyle(color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),),
                      ),
                    ]
                ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(child:
                Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 8),
                        width: 200,
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: const Image(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1559564477-6e8582270002?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(24.0),
                        child: const Text("Seville",
                          style: TextStyle(color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),),
                      ),
                    ]
                ),
                ),
                Expanded(child:
                Stack(
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(right: 8),
                        width: 400,
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: const Image(
                            image: NetworkImage(
                                'https://mappingspain.com/wp-content/uploads/2020/12/The-City-of-Arts-and-Sciences-Valencia.jpg'),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20.0),
                        child: const Text("Valencia",
                          style: TextStyle(color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ]
                ),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: (){
        Navigator.of(context, rootNavigator: false).push(MaterialPageRoute(builder: (_) => const SpanishIslands(),maintainState: false));
        // Navigator.push(context , MaterialPageRoute(builder: (_) => const Explore()));
      },
    );
  }
}


