import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _MyImageScreen();
}

class _MyImageScreen extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ImageScreen'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          //padding: const EdgeInsets.all(10),

          children: [
            CachedNetworkImage(
              imageUrl: 'https://picsum.photos/250?image=9',
            ),
            CachedNetworkImage(
              imageUrl: "https://prod-webuysg.oss.webuy.ren/p8gdomYP.jpg",
            ),
            CachedNetworkImage(
              imageUrl: "https://prod-webuysg.oss.webuy.ren/9DWVtBDJ.jpg",
            ),
            CachedNetworkImage(
              imageUrl: "https://prod-webuysg.oss.webuy.ren/7DBDy3kV.jpg",
            ),
            CachedNetworkImage(
              imageUrl: 'https://picsum.photos/250?image=9',
            ),
            CachedNetworkImage(
              imageUrl: 'https://picsum.photos/250?image=9',
            ),
            CachedNetworkImage(
              imageUrl: 'https://picsum.photos/250?image=9',
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
        ));
  }
}
