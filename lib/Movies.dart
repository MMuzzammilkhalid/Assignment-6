import 'package:flutter/material.dart';

import 'movieDetails.dart';

class Movies extends StatefulWidget {
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black,
        appBar: AppBar(
          bottomOpacity: 1,
          bottom: TabBar(tabs: [
            Text('TV Shows',
                style: TextStyle(color: Colors.white, fontSize: 10)),
            Text('Movies ',
                style: TextStyle(color: Colors.white, fontSize: 10)),
            Text('My List ',
                style: TextStyle(color: Colors.white, fontSize: 10)),
          ]),
          leading: Image.asset(
            "assets/pngwing.com.png",
            height: 3,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap:(int givenIndex){
            setState(() {
              index = givenIndex;
            });

          },
          currentIndex: index,
          backgroundColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),

             BottomNavigationBarItem(
               icon: Icon(Icons.download),
               label: 'Download',
             ),

          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  Padding(padding:EdgeInsets.all(10)),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    'assets/2.jpg',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "AVATAR II",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.add),

                ),

                ElevatedButton(

                  onPressed: () {},
                  child: Icon(Icons.play_arrow),
                ),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetails(),
                          ));
                    });
                  },
                  child: Icon(Icons.info),
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Text(
                "Previews",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(3),
                      child: Row(
                        children: [
                          Container(
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 40,
                              backgroundImage: AssetImage("assets/2.jpg"),
                            ),
                          ),

                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 40,
                            backgroundImage: AssetImage(
                              "assets/5.jpg",
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 40,
                            backgroundImage: AssetImage(
                              "assets/4.jpg",
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Text(
                "Trending Now",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.all(3),
                      child: Row(

                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 40,
                            backgroundImage: AssetImage(
                              "assets/4.jpg",
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
