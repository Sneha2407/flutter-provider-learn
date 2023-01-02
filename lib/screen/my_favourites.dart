import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/favourite_provider.dart';

class MyFavScreen extends StatefulWidget {
  const MyFavScreen({super.key});

  @override
  State<MyFavScreen> createState() => _MyFavScreenState();
}

class _MyFavScreenState extends State<MyFavScreen> {
  List<int> selectedItem = [];
  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavouritesProvider>(context);
    print('build here');
    return Scaffold(
        appBar: AppBar(title: Text("Favourites Screen")),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: favProvider.selectedItem.length,
                  itemBuilder: ((context, index) {
                    return Consumer<FavouritesProvider>(
                      builder: (context, value, child) {
                        return ListTile(
                          onTap: () {
                            // setState(() {});
                            if (selectedItem.contains(index)) {
                              value.removeItems(index);
                            }
                            // else {
                            //   value.addItems(index);
                            // }
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
