import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/services.dart';

class MyLocation extends StatefulWidget {
  const MyLocation({Key? key}) : super(key: key);

  @override
  State<MyLocation> createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  List<LocationEntry> locationData = [];
  int index = 1;

  // getting the permission from user
  getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Location Denied"),
        ),
      );
      LocationPermission ask = await Geolocator.requestPermission();
    } else {
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      setState(() {
        locationData.add(LocationEntry(
            index: index,
            latitude: currentPosition.latitude,
            longitude: currentPosition.longitude));
        index++;
      });
    }
  }

  // Function to copy table data to clipboard
  void copyTableToClipboard() {
    String tableData = '';
    for (var entry in locationData) {
      tableData += '${entry.index}, ${entry.latitude}, ${entry.longitude}\n';
    }
    Clipboard.setData(ClipboardData(text: tableData));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Copied table data to clipboard'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Location"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              onPressed: copyTableToClipboard,
              child: const Text(
                'Copy Table',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              onPressed: () {
                getCurrentLocation();
              },
              child: const Text(
                'Track my location',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Index')),
                  DataColumn(label: Text('Latitude')),
                  DataColumn(label: Text('Longitude')),
                ],
                rows: locationData
                    .map(
                      (entry) => DataRow(cells: [
                        DataCell(Text(entry.index.toString())),
                        DataCell(Text(entry.latitude.toString())),
                        DataCell(Text(entry.longitude.toString())),
                      ]),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LocationEntry {
  final int index;
  final double latitude;
  final double longitude;

  LocationEntry({
    required this.index,
    required this.latitude,
    required this.longitude,
  });
}
