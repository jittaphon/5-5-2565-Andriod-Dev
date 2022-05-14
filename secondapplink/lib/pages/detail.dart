import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
    required this.detail,
    required this.title,
    required this.subtitle,
    required this.image,
  }) : super(key: key);

  final String detail;
  final String subtitle;
  final String title;
  final String image;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: ListView(
        children: [
          Text(widget.title),
          Text(widget.subtitle),
          Text(widget.detail),
          Image.network(widget.image),
        ],
      ),
    );
  }
}
