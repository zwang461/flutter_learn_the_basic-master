import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'Image_Screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

import 'detail_travel_page.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<String> travelList = [
  "https://prod-webuysg.oss.webuy.ren/p8gdomYP.jpg",
  "https://prod-webuysg.oss.webuy.ren/7DBDy3kV.jpg",
  "https://prod-webuysg.oss.webuy.ren/9DWVtBDJ.jpg",
  "https://prod-webuysg.oss.webuy.ren/iKmBJfiQ.jpg",
  "https://prod-webuysg.oss.webuy.ren/bA9gKvBL.jpg",
  "https://prod-webuysg.oss.webuy.ren/rx1pjbZa.JPG"
];
final List<String> travelList_1 = [
  "https://prod-webuysg.oss.webuy.ren/aRfwAFPm.JPG",
  "https://prod-webuysg.oss.webuy.ren/v97XEOc1.JPG",
  "https://prod-webuysg.oss.webuy.ren/1WpO5Bbb.JPG",
  "https://prod-webuysg.oss.webuy.ren/xY5A2sNH.JPG",
  "https://prod-webuysg.oss.webuy.ren/tPyuU7bV.JPG",
];
final List<String> travelList_2 = [
  "https://prod-webuysg.oss.webuy.ren/UScUiYCK.JPG",
  "https://prod-webuysg.oss.webuy.ren/NJgI5YLX.JPG",
  "https://prod-webuysg.oss.webuy.ren/LXzEXUL3.JPG",
  "https://prod-webuysg.oss.webuy.ren/0DaGl4k7.JPG",
  "https://prod-webuysg.oss.webuy.ren/rZDNaMjM.JPG",
];
final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    InteractiveViewer(
                      child: CachedNetworkImage(
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        imageUrl: item,
                        fit: BoxFit.cover,
                        width: 1000,
                      ),
                    ),
                    Stack(children: [
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${imgList.indexOf(item) + 1} image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ],
                )),
          ),
        ))
    .toList();

final List<Widget> travelImageSliders = travelList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    InteractiveViewer(
                        child: CachedNetworkImage(
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            imageUrl: item,
                            fit: BoxFit.cover,
                            width: 1000.0)),
                    Stack(
                      children: [
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(300, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${travelList.indexOf(item) + 1} image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ))
    .toList();

final List<Widget> travelImageSliders_1 = travelList_1
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    InteractiveViewer(
                        child: CachedNetworkImage(
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            imageUrl: item,
                            fit: BoxFit.cover,
                            width: 1000.0)),
                    Stack(
                      children: [
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(300, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${travelList_1.indexOf(item) + 1} image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ))
    .toList();
final List<Widget> travelImageSliders_2 = travelList_2
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    InteractiveViewer(
                        child: CachedNetworkImage(
                            placeholder: (context, url) =>
                                const LinearProgressIndicator(),
                            imageUrl: item,
                            fit: BoxFit.cover,
                            width: 1000.0)),
                    Stack(
                      children: [
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(300, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${travelList_2.indexOf(item) + 1} image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ))
    .toList();

class cards extends StatefulWidget {
  const cards({super.key});

  @override
  State<cards> createState() => _cardsState();
}

class _cardsState extends State<cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            title: Text("Check our most recent planes!"),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: .0),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                height: 320,
                width: double.maxFinite,
                child: Card(
                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: 240,
                          autoPlay: false,
                          enlargeCenterPage: true,
                        ),
                        items: travelImageSliders,
                      ),
                      Stack(children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return travel_detail();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  primary: Colors.white,
                                  onPrimary: Colors.white),
                              child: Text("Learn More"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 122, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "[Winter Season] 10D7N Finland and Santa Claus Village Tour Package",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.sofia().copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "fr. S\$1888",
                              style: GoogleFonts.sofia().copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ])
                    ],
                  ),
                  elevation: 5,
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                height: 310,
                width: double.maxFinite,
                child: Card(
                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 240,
                          viewportFraction: 1,
                          autoPlay: true,
                          enlargeCenterPage: true,
                        ),
                        items: imageSliders,
                      ),
                      Stack(children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return travel_detail();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  primary: Colors.white,
                                  onPrimary: Colors.white),
                              child: Text("Learn More"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 120, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Some Random Scenery",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ])
                    ],
                  ),
                  elevation: 5,
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                height: 310,
                width: double.maxFinite,
                child: Card(
                  child: Column(
                    children: [
                      GestureDetector(
                        child: CarouselSlider(
                          options: CarouselOptions(
                            height: 240,
                            viewportFraction: 1,
                            autoPlay: false,
                            enlargeCenterPage: true,
                          ),
                          items: travelImageSliders_1,
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ImageScreen()),
                          );
                        },
                      ),
                      Stack(children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return travel_detail();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  primary: Colors.white,
                                  onPrimary: Colors.white),
                              child: Text("Learn More"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 120, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("8D7N Family Fun in Taiwan",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.zillaSlab().copyWith(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "fr. S\$1388",
                              style: GoogleFonts.zillaSlab().copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                  elevation: 5,
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                height: 320,
                width: double.maxFinite,
                child: Card(
                  child: Column(
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: 240,
                          autoPlay: false,
                          enlargeCenterPage: true,
                        ),
                        items: travelImageSliders_2,
                      ),
                      Stack(children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return travel_detail();
                                }));
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                  primary: Colors.white,
                                  onPrimary: Colors.white),
                              child: Text("Learn More"),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 120, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: SelectableText(
                                "10D7N Ancient Egypt Tour Package",
                                style: GoogleFonts.aldrich().copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis,
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(45, 45, 0, 0),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "fr. S\$1388",
                              style: GoogleFonts.aldrich().copyWith(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                  elevation: 5,
                ),
              ),
            ),
            // Flexible(
            //   child: Container(
            //     color: Colors.amber,
            //     child: cards(),
            //   ),
            // )
          ]))
        ],
      ),
    );
  }
}
