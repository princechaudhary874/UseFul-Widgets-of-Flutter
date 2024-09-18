import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ZoomMeetingLink extends StatelessWidget {
  // Use your fixed Zoom PMI link
  final String zoomUrl = 'https://zoom.us/j/your_pmi_id'; // Replace with your permanent Zoom link

  // Function to launch the Zoom URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Join Daily Zoom Meeting'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _launchURL(zoomUrl),
          child: Text('Join Zoom Meeting'),
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        ),
      ),
    );
  }
}