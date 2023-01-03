import 'package:flutter/material.dart';
import 'package:flutter_provider_learn/provider/favourite_provider.dart';
import 'package:flutter_provider_learn/screen/my_favourites.dart';
import 'package:provider/provider.dart';

class FavourtitesScreen extends StatefulWidget {
  const FavourtitesScreen({super.key});

  @override
  State<FavourtitesScreen> createState() => _FavourtitesScreenState();
}

class _FavourtitesScreenState extends State<FavourtitesScreen> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    // final favProvider = Provider.of<FavouritesProvider>(context);
    print('build here');
    return Scaffold(
        appBar: AppBar(
          title: Text("Favourites Screen"),
          // actions: [
          //   InkWell(
          //     child: Icon(Icons.favorite),
          //     onTap: () {
          //       Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => MyFavScreen()));
          //     },
          //   )
          // ],
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: ((context, index) {
                    return Consumer<FavouritesProvider>(
                      builder: (context, value, child) {
                        return ListTile(
                          onTap: () {
                            // setState(() {});
                            if (value.selectedItem.contains(index)) {
                              value.removeItems(index);
                            } else {
                              value.addItems(index);
                            }
                          },
                          title: Text("Item " + index.toString()),
                          trailing: Icon(value.selectedItem.contains(index)
                              ? (Icons.favorite)
                              : Icons.favorite_outline),
                        );
                      },
                    );
                  })),
            )
          ],
        ));
  }
}
