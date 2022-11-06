import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactDetail extends StatelessWidget {
  final Uri? url;
  final String text;
  final IconData myIcon;
  const ContactDetail({
    required this.text,
    required this.myIcon,
    this.url,
  });

  Future<void> _launchUrl() async {
    if (url == null) {
      return;
    } else {
      if (!await launchUrl(url!, mode: LaunchMode.externalApplication)) {
        throw 'Could not launch $url';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: CircleAvatar(
                backgroundColor: Colors.white38,
                radius: 12,
                child: Icon(
                  myIcon,
                  color: Color.fromARGB(255, 115, 102, 68),
                  size: 14,
                ),
              ),
            ),
            InkWell(
              onTap: url != null ? _launchUrl : null,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
