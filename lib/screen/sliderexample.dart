import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/slider_provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double val = 1.0;
  @override
  Widget build(BuildContext context) {
    print('build here');
    // final provider = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(title: Text("Slider Screen")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<SliderProvider>(
              builder: (context, vall, child) {
                return Slider(
                    min: 0,
                    max: 1,
                    value: vall.slider,
                    onChanged: (value) {
                      // val = value;
                      // setState(() {});
                      vall.setSlider(value);
                    });
              },
            ),
            Consumer<SliderProvider>(builder: (context, vall, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(vall.slider),
                      ),
                      child: Text("Container 1"),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 100,
                      child: Text("Container 2"),
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(vall.slider)),
                    ),
                  ),
                ],
              );
            })
          ],
        ));
  }
}
