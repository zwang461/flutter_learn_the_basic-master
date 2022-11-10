import 'package:flutter/cupertino.dart';

class travel_detail extends StatefulWidget {
  const travel_detail({super.key});

  @override
  State<travel_detail> createState() => _travel_detailState();
}

class _travel_detailState extends State<travel_detail> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: Text(
                "Here lies the detail information of travel plan, price.")),
      ),
    );
  }
}
