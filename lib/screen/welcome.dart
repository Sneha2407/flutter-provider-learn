import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/provider/storage_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider_learn/screen/name_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.red[900],
      ),
      body: Consumer<StorageProvider>(builder: (context, value, child) {
        return Center(
          child: Column(children: [
            Row(
              children: [
                Text(
                  "Name:",
                  style: TextStyle(fontSize: 20),
                ),
                Text(value.name, style: TextStyle(fontSize: 20)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Email:", style: TextStyle(fontSize: 20)),
                Text(value.email, style: TextStyle(fontSize: 20)),
              ],
            ),
          ]),
        );
      }),
    );
  }
}
