import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class GifPage extends StatelessWidget {
  const GifPage({super.key, required this.gifData});

  final Map gifData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {
                Share.share(
                    "Acesse esse Gif ${gifData['images']['fixed_height']['url']}");
              },
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              ))
        ],
        title: Text(
          gifData['title'],
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Expanded(
            child: Image.network(
          gifData['images']['fixed_height']['url'],
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
