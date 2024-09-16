import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> _allItems = ['Apple', 'Banana', 'Orange', 'Grapes', 'Mango'];
  // List of filtered items
  List<String> _filteredItems = [];
  // Flag for checking if the search field is active
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _filteredItems = _allItems;
    // Add a listener to the search field controller to filter items
    _searchController.addListener(_filterItems);
  }

  // Function to filter items based on the search query
  void _filterItems() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      _filteredItems = _allItems
          .where((item) => item.toLowerCase().contains(query))
          .toList();
      // Set the flag to true if the search query is not empty
      _isSearching = query.isNotEmpty;
    });
  }

  @override
  void dispose() {
    // Dispose the controller when the widget is removed from the tree
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Example'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
                  labelText: 'Search',
                  labelStyle: const TextStyle(
                    color: Colors.blueGrey, // Color of the label
                    fontWeight: FontWeight.bold, // Bold label
                    fontSize: 18.0, // Size of the label
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: InputBorder.none,
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  suffixIcon: _isSearching
                      ? IconButton(
                          icon: const Icon(Icons.clear, color: Colors.grey),
                          onPressed: () {
                            _searchController.clear();
                            _filterItems();
                          },
                        )
                      : null,
                ),
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredItems[index]),
                );
              },
            ),
          ),

       
          
        ],
      ),
    );
  }
}
