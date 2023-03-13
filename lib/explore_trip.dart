
import 'package:flutter/material.dart';
import 'explore.dart';

class ExploreTripPage extends StatelessWidget {
  const ExploreTripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        SizedBox(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 200,),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          'assets/images/img.png',
                        ),
                      ),
                      const SizedBox(height: 50),

                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          children: [
                            const Text("Welcome to Travel App",
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),),


                            const SizedBox(height: 30,),

                            const Text("Explore new cities  and keep all the information you need while travelling",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.normal,
                                  fontSize: 17,
                                  color: Colors.white),),

                            const SizedBox(height: 200,),

                            Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Colors.white, borderRadius: BorderRadius.circular(80)),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context, MaterialPageRoute(builder: (_) => const Explore()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    backgroundColor:  Colors.white, // Background color
                                  ),
                                  child: const Text(
                                    "Let's Explore",
                                    style: TextStyle(color: Color(0xff0DCD9F), fontSize: 25),
                                  ),
                                ),
                            ),
                            const SizedBox(height: 100,),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}