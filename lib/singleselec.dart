import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/provider/select_provider.dart';
import 'package:flutter_provider_learn/screen/oneskill.dart';
import 'package:provider/provider.dart';

class OlgaGrid extends StatefulWidget {
  const OlgaGrid({Key? key}) : super(key: key);

  @override
  State<OlgaGrid> createState() => _OlgaGridState();
}

class _OlgaGridState extends State<OlgaGrid> {
  int selectedItem = -1;
  // bool isSelected = false;

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
  // final selectProvider = Provider.of<SelectProvider>(context, listen: false);
  @override
  Widget build(BuildContext context) {
    print("Build here");
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
                    return Consumer<SelectProvider>(
                        builder: (context, value, child) {
                      return GestureDetector(
                        onTap: () {
                          // ontap of each card, set the defined int to the grid view index
                          if (value.selectedItem == index) {
                            value.setSelectedItem(-1);
                            // isSelected = false;
                          } else {
                            value.setSelectedItem(index);
                            // isSelected = true;
                          }
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: value.selectedItem == index
                                  ? Colors.amber[300]
                                  : Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Text(skills[index])),
                        ),
                      );
                    });
                  })),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OneSkill()),
              );
            },
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
