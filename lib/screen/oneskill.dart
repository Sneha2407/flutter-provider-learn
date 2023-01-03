import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/provider/select_provider.dart';
import 'package:provider/provider.dart';

class OneSkill extends StatefulWidget {
  const OneSkill({super.key});

  @override
  State<OneSkill> createState() => _OneSkillState();
}

class _OneSkillState extends State<OneSkill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Skills"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        children: [
          Image.asset('images/icon.png'),
          Text(
            "These are my skills ",
            maxLines: 2,
          ),
          SizedBox(
            height: 20,
          ),
          Consumer<SelectProvider>(builder: (context, value, child) {
            return Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.amber[300],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                value.mySkill,
                style: TextStyle(fontSize: 20),
              )),
            );
          })
        ],
      ),
    );
  }
}
