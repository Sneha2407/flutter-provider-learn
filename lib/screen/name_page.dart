import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/provider/storage_provider.dart';
import 'package:flutter_provider_learn/screen/welcome.dart';
import 'package:provider/provider.dart';

class NamePage extends StatefulWidget {
  const NamePage({super.key});

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  // final _nameController = TextEditingController();
  // final _emailController = TextEditingController();
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
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Consumer<StorageProvider>(builder: (context, value, child) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Center(
                  child: CircleAvatar(
                    radius: 56,
                    backgroundColor: Colors.red,
                    child: Padding(
                        padding: const EdgeInsets.all(8), // Border radius
                        child: ClipOval(
                          child: Image.asset("images/icon.png"),
                        )),
                  ),
                ),
                SizedBox(height: 20),
                Text("Name*"),
                TextField(
                  controller: value.nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name',
                  ),
                ),
                SizedBox(height: 20),
                Text("Email*"),
                TextField(
                  controller: value.emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'abc@gmail.com',
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(left: 18.0, right: 18, top: 17),
                    child: SizedBox(
                      height: 50,
                      width: 340,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color.fromARGB(255, 162, 7, 7),
                                  // Color(0XFF362477),
                                  Color.fromARGB(255, 214, 88, 20),
                                ]),
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WelcomePage()));
                            },
                            child: Text(
                              "SAVE",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  color: Colors.white,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                    )),
              ],
            ),
          );
        }),
      ),
    );
  }
}
