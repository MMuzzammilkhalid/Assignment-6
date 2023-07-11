import 'package:flutter/material.dart';
import 'Movies.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails({super.key});

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.transparent,
        leading: BackButton( onPressed: () {
          setState(() {
            Navigator.push(
                context,
                MaterialPageRoute(
                 builder: (context) => Movies(),


                ));
          });
        },),
      ),
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 200.0),
        child: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          backgroundColor: Colors.red,
          onPressed: () => null,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(0)),
            // Container(child: Image.asset(
            //     "assets/6.jpg",
            //     fit: BoxFit.fill,
            //   ),
            //   height:70,
            //   width:50),
            Stack(children: [
              Align(
                child: Container(
                  child: Image.asset(
                    "assets/2.jpg",
                    fit: BoxFit.fill,
                  ),
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                ),
              ),

              Positioned(
                right: 50,
                left: 50,
                top: 40,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(style: BorderStyle.solid,color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(10, 10), // Shadow position
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/2.jpg",
                    fit: BoxFit.fill,
                  ),
                  width: 30,
                  height: 230,
                ),
              ),

              // decoration: BoxDecoration(
              //   boxShadow: [
              //     BoxShadow(
              //       color: Colors.black,
              //       blurRadius: 10,
              //       offset: Offset(0, 10), // Shadow position
              //     ),
              //   ],
              // ),
            ]),
            SizedBox(
              height: 10,
              width: 40,
            ),
            Text(
              "AVATAR II",
              style: TextStyle(color: Colors.lightBlue, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Suspenful",
                    style: TextStyle(color: Colors.white, fontSize: 10)),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text("Exciting",
                    style: TextStyle(color: Colors.white, fontSize: 10)),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text("Thriller",
                    style: TextStyle(color: Colors.white, fontSize: 10)),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Container(
                  height: 13,
                  width: 20,
                  child: Text("18+",
                      style: TextStyle(color: Colors.white, fontSize: 10)),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.grey,
                  ),
                ),
                Text("4 Parts",
                    style: TextStyle(color: Colors.white, fontSize: 10)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("8.3",
                    style: TextStyle(color: Colors.white, fontSize: 10)),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Container(
                    height: 75,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                        "Set more than a decade after the events of the first film, Avatar: The Way of Water begins to tell the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.",
                        style: TextStyle(color: Colors.white, fontSize: 10))),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Text("Recommended",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Image.asset("assets/4.jpg"),
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    child: Image.asset("assets/5.jpg"),
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
