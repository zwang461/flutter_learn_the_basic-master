import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';
import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: firstPage());
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  String buttonName = "See Indtroduction";
  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      title: "Discover and share with your neighbour!",
      body:
          "Create, watch, and share short, entertaining videos with friends and neighbours - whether it’s an unboxing or dining experience, we bring you closer to the people and things you love.",
      image: CircleAvatar(
        radius: 200,
        child: ClipOval(
          child: Image.network(
              "https://media-exp1.licdn.com/dms/image/C560BAQHA2uEwg5hyCw/company-logo_200_200/0/1590553023983?e=2147483647&v=beta&t=jHHaAYqMbdPzKI20VzqWY0Ypx0JfAZgl7tFK2aiKLWo",
              height: 450.0),
        ),
      ),
    ),
    PageViewModel(
      title: "Fresh",
      body:
          "Discover a wide range of products – from fresh produce, frozen products, ready-to-eat meals and vouchers!",
      image: CircleAvatar(
        radius: 200,
        child: ClipOval(
          child: Center(
            child: Image.network(
                "https://www.webuysg.com/img/scence1.7e6e3ab5.jpg",
                height: 450.0),
          ),
        ),
      ),
    ),
    PageViewModel(
      title: "Life Style",
      body:
          "Fulfil your daily needs with WEBUY: dining vouchers, household items, beauty products and repair services",
      image: CircleAvatar(
        radius: 200,
        child: ClipOval(
          child: Center(
            child: Image.network(
                "https://www.webuysg.com/img/scence2.ebc53e49.jpg",
                height: 450.0),
          ),
        ),
      ),
    ),
    PageViewModel(
      title: "Food Delivery",
      body:
          "Enjoy food from popular restaurants from the comfort of your home – at attractive prices",
      image: CircleAvatar(
        radius: 200,
        child: ClipOval(
          child: Image.network(
              "https://www.webuysg.com/img/scence3.f82e3608.jpg",
              height: 450.0),
        ),
      ),
    ),
    PageViewModel(
      title: "Local Service",
      body:
          "Explore the latest, cool restaurants in the city and dine in with your friends and family",
      image: CircleAvatar(
        radius: 200,
        child: ClipOval(
          child: Center(
            child: Image.network(
                "https://www.webuysg.com/img/scence4.73578efd.jpg",
                height: 450.0),
          ),
        ),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('welcome!')),
        body: IntroductionScreen(
          pages: listPagesViewModel,
          done:
              const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
          skip:
              const Text("Skip", style: TextStyle(fontWeight: FontWeight.w600)),
          back:
              const Text("Back", style: TextStyle(fontWeight: FontWeight.w600)),
          next:
              const Text("Next", style: TextStyle(fontWeight: FontWeight.w600)),
          baseBtnStyle: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          skipStyle: TextButton.styleFrom(primary: Colors.red),
          doneStyle: TextButton.styleFrom(primary: Colors.green),
          backStyle: TextButton.styleFrom(primary: Colors.red),
          onDone: () {
            // When done button is press
            Navigator.pop(context);
          },
          onSkip: () {},
          showBackButton: true,
          showSkipButton: false,
          showDoneButton: true,
          showNextButton: true,
        ));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const firstPage(),
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

class thirdPage extends StatefulWidget {
  const thirdPage({Key? key}) : super(key: key);

  @override
  State<thirdPage> createState() => _thirdPageState();
}

class _thirdPageState extends State<thirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Just a Page~"),
      ),
      body: Center(
        child: CupertinoButton(
          onPressed: () {},
          color: Colors.black87,
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Text("Hello"),
        ),
      ),
    );
  }
}
