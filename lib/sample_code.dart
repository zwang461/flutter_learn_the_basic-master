import 'package:flutter/material.dart';

void main() => runApp(const SampleApp());

class SampleApp extends StatelessWidget {
  const SampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: SizedBox(
          height: 210,
          child: Card(
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    '1625 Main Street',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Text('My City, CA 99984'),
                  leading: Icon(
                    Icons.restaurant_menu,
                    color: Colors.blue[500],
                  ),
                ),
                const Divider(),
                ListTile(
                  title: const Text(
                    '(408) 555-1212',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  leading: Icon(
                    Icons.contact_phone,
                    color: Colors.blue[500],
                  ),
                ),
                ListTile(
                  title: const Text('costa@example.com'),
                  leading: Icon(
                    Icons.contact_mail,
                    color: Colors.blue[500],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
