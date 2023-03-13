
import 'package:flutter/material.dart';
import 'explore.dart';
import 'favourites.dart';


class Visited extends StatefulWidget {
  const Visited({Key? key}) : super(key: key);

  @override
  State<Visited> createState() => _VisitedState();
}

class _VisitedState extends State<Visited> {
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
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      children:const [
                        Expanded(child:
                         Center(child: Text("France",
                          style: TextStyle(color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                          textAlign: TextAlign.left,)),
                        ),
                        Expanded(child: Icon(Icons.check_outlined,
                        color: Colors.blue,))
                      ],
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      children: const [
                        Expanded(child:
                        Center(child: Text("Spain",
                          style: TextStyle(color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),)),
                        ),
                        Expanded(child: Icon(Icons.check_outlined,
                        color: Colors.blue,))
                      ],
                    ),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      children:const [
                        Expanded(child:
                         Center(child: Text("U S",
                          style: TextStyle(color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),)),
                        ),
                        Expanded(child: Icon(Icons.check_outlined,
                        color: Colors.blue,),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}

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