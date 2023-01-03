import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/provider/multi_skill_provider.dart';
import 'package:provider/provider.dart';

class MultiSelect extends StatefulWidget {
  const MultiSelect({Key? key}) : super(key: key);

  @override
  State<MultiSelect> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  // int selectedItem = 0;
  List<int> selectedSkill = [];
  List<String> skills = [
    "Self Awareness",
    "Assertiveness",
    "Self Belief",
    "Independence",
    "Passion",
    "Organised",
    "Network",
    "Realistic",
    "Flexible",
    "Organised",
    "Problem solving",
    "Motivation",
    "Persistence",
    "Opimism",
    "Self Care",
    "Discipline",
    "Pro Active",
    "Risk Taking",
    "Resillence"
  ];
  @override
  Widget build(BuildContext context) {
    print("build here");
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Skills"),
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.red[900],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset('images/icon.png'),
              Text(
                "Select key skills that you have ",
                maxLines: 2,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Flexible(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 70,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    crossAxisCount: 3,
                  ),
                  itemCount: skills.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Consumer<MultiSkillProvider>(
                        builder: (context, value, child) {
                      return GestureDetector(
                        onTap: () {
                          // ontap of each card, set the defined int to the grid view index
                          // selectedSkill.add(index);
                          if (value.selectedSkills.contains(index)) {
                            value.removeSkill(index);
                          } else {
                            value.addSkill(index);
                          }
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: value.selectedSkills.contains(index)
                                  ? Colors.amber[300]
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Text(skills[index])),
                        ),
                      );
                    });
                  })),
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
