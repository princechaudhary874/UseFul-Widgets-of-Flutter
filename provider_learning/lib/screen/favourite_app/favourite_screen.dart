import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_learning/provider/favourite_provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    debugPrint("build");
    final favouriteProvider = Provider.of<FavouriteScreenProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite App"),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Consumer<FavouriteScreenProvider>(
              builder: (context, value, child) {
            return ListTile(
              onTap: () {
                favouriteProvider.selectedItems.contains(index)?favouriteProvider.removeItems(index):favouriteProvider.addItems(index);
               // favouriteProvider.addItems(index);
                //  setState(() {});
              },
              title: Text("index ${index + 1}"),
              trailing: favouriteProvider.selectedItems.contains(index)
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_border_outlined),
            );
          });
        },
      ),
    );
  }
}
