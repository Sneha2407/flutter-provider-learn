import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/provider/multi_skill_provider.dart';
import 'package:provider/provider.dart';

class MySkills extends StatefulWidget {
  const MySkills({super.key});

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Skills"),
        leading: Icon(Icons.arrow_back_ios),
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
          Consumer<MultiSkillProvider>(builder: (context, value, child) {
            return Flexible(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 70,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    crossAxisCount: 2,
                  ),
                  itemCount: value.selectedSkills.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.amber[300],
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text(value.selectedSkills[index])),
                    );
                  }),
            );
          }),
          ElevatedButton(
            onPressed: () {},
            child: Text('SUBMIT'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xffDEB988)),
            ),
          )
        ],
      ),
    );
  }
}
