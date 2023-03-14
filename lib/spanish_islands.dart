
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:travelapp/favourites.dart';
import 'package:travelapp/visited_places.dart';

class SpanishIslands extends StatelessWidget {
  const SpanishIslands({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Explore();
  }
}


class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyStatefulWidget();
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
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
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

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                children: <Widget>[
                  SizedBox(
                    width: 600,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Image(
                              image: NetworkImage(
                                  'https://img.traveltriangle.com/blog/wp-content/uploads/2018/04/spanish-island-cover-1.jpg'),
                            ),
                          ],
                        ),
                      ),
                  ),
                  const Center(child: Text("Spanish Islands",
                    style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),)),
                ]
            ),
             Container(
               padding: const EdgeInsets.all(16.0),
               child: Form(
                key: formKey,
                child:
                Column(
                  children: [
                     const Text(
                      "Spanish Islands",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      "Spain has  some of the most beautiful islands in Europe.The largest  Spanish  islands  are equally divided "
                          "between the Balearic Islands and the Canary Islands.East  of the Spanish mainland, the four chief "
                    ),
                    const ReadMoreText(
                            " the four major islands are all popular "
                            "tourist destinations. Ibiza, in particular, is known as an international party destination, "
                            "attracting many of the world's most popular DJs to its nightclubs.",
                      style: TextStyle(color: Color(0xff0DCD9F)),
                      preDataText: 'The islands have a Mediterranean climate, and',
                      preDataTextStyle: TextStyle(color: Colors.black),
                      trimLines: 1,
                      trimMode: TrimMode.Line,
                    ),
                    const SizedBox(height: 30,),
                    Row(
                      children: [
                        Expanded(
                          child:
                        Column(
                          children: [
                            IconButton(
                                onPressed: (){

                                },
                                icon: const Icon(Icons.check_outlined,
                                color: Color(0xff0DCD9F),)),
                            const Text('Mark as Visited',
                            style: TextStyle(
                            color: Color(0xff0DCD9F)),),
                          ],
                        ),
                        ),
                        Expanded(child:
                        Column(
                          children: [
                            IconButton(
                                onPressed: (){

                                },
                                icon: const Icon(Icons.favorite_border,
                                  color: Color(0xff0DCD9F),)),
                            const Text('Add to Favourite',
                              style: TextStyle(
                                  color: Color(0xff0DCD9F)),),
                          ],
                        ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Column(
                      children: [
                        IconButton(
                            onPressed: (){

                            },
                            icon: const Icon(Icons.more_horiz_sharp,
                              color: Color(0xff0DCD9F),)),
                        const Text('Know more',
                          style: TextStyle(
                              color: Color(0xff0DCD9F)),),
                      ],
                    ),
                  ],
                ),
            ),
             ),
            const SizedBox(height: 50,),
          ],
        ),
      ),
      /*onTap: (){
        Navigator.of(context, rootNavigator: false).push(MaterialPageRoute(builder: (_) => const SpanishIslands(),maintainState: false));
        // Navigator.push(context , MaterialPageRoute(builder: (_) => const Explore()));
      },*/
    );
  }
}


