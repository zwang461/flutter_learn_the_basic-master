import 'package:flutter/material.dart';
import 'package:flutter_learn_the_basic/Travel_introduction_page.dart';
import 'main.dart';
import 'detail_audio_page.dart';
import 'sample_code.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPageState();
}

class _firstPageState extends State<firstPage> {
  String buttonName = 'Click';
  bool _isClicked = false;
  int currentIndex = 0;

// Navigator.of(context).push(MaterialPageRoute(
//                                   builder: (BuildContext context) {
//                                 return const SecondPage();
//                               }));

  @override
  Widget build(BuildContext context) {
    String barText = "Webuy Flutter UI Demo";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        centerTitle: false,
        // leadingWidth: 100,
        title: Text(barText),
        actions: [
          IconButton(
            icon: Image.network(
                'https://tz-sg.sgp1.digitaloceanspaces.com/image/company/2970539/c_lpad/160x160/2970539.jpg'),
            onPressed: () {
              Navigator.of(context).push(_createRoute());
            },
            tooltip: 'Introduction of Webuy',
          ),
        ],
      ),
      body: Center(
        child: currentIndex == 0
            ? Container(
                color: Colors.amberAccent,
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(0),
                      // ignore: sort_child_properties_last
                      child: Container(
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        height: 220,
                        width: double.maxFinite,
                        child: Card(
                          // ignore: sort_child_properties_last
                          child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  // ignore: prefer_const_constructors
                                  return cards();
                                }));
                              },
                              child: Image.asset(
                                "images/travel.png",
                                fit: BoxFit.cover,
                              )),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          semanticContainer: true,
                          elevation: 5,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(),
                          onPressed: () {
                            buttonName = 'clicked';
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) {
                              return SampleApp();
                            }));
                          },
                          child: Text(buttonName)),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            buttonName = 'click';
                          });
                        },
                        child: Text("undo")),
                  ],
                ),
              )
            : currentIndex == 2
                ? GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 5,
                    crossAxisSpacing: 5,
                    //padding: const EdgeInsets.all(10),

                    children: [
                      Image(
                        image: AssetImage("images/ganyu.jpeg"),
                      ),
                      Image(
                        image: NetworkImage(
                            "https://prod-webuysg.oss.webuy.ren/p8gdomYP.jpg"),
                      ),
                      Image(
                        image: NetworkImage(
                            "https://prod-webuysg.oss.webuy.ren/7DBDy3kV.jpg"),
                      ),
                      Image(
                        image: NetworkImage(
                            "https://prod-webuysg.oss.webuy.ren/9DWVtBDJ.jpg"),
                      ),
                      Image(
                        image: NetworkImage(
                            "https://prod-webuysg.oss.webuy.ren/iKmBJfiQ.jpg"),
                      ),
                      Image(
                        image: NetworkImage(
                            "https://prod-webuysg.oss.webuy.ren/bA9gKvBL.jpg"),
                      ),
                      Image(
                        image: NetworkImage(
                            "https://prod-webuysg.oss.webuy.ren/p8gdomYP.jpg"),
                      ),
                      Card(
                        color: Colors.cyan,
                      ),
                      Card(
                        color: Colors.yellowAccent,
                      ),
                      Card(
                        color: Colors.deepOrange,
                      ),
                      Card(
                        color: Colors.red,
                      ),
                      Card(
                        color: Colors.yellow,
                      ),
                      Card(
                        color: Colors.purpleAccent,
                      ),
                      Card(
                        color: Colors.indigo,
                      ),
                      Card(
                        color: Colors.black,
                      ),
                      Card(
                        color: Colors.pinkAccent,
                      ),
                    ],
                  )
                : audioPage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: 'home',
              icon: Icon(
                Icons.home,
                color: Colors.blueAccent,
                semanticLabel: 'Go back to home page',
              )),
          BottomNavigationBarItem(
              label: 'music',
              icon: Icon(
                Icons.audiotrack,
                color: Colors.black,
              )),
          BottomNavigationBarItem(
              label: 'image',
              icon: Icon(
                Icons.photo,
                color: Colors.amberAccent,
              ))
        ],
        currentIndex: currentIndex,
        onTap: ((int index) {
          setState(() {
            currentIndex = index;
          });
        }),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SecondPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
