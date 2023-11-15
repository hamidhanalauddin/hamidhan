import 'package:flutter/material.dart';
import 'package:hamidhan_14/pages/persegi%20page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green.shade300,
          title: Text(
            "Home Page",
            style: TextStyle(color: Colors.white),
          )),
      body: ListView(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PersegiPage()));
    },
              child:coustemmenu(imageAssets: "asset/belah2.png", title: "jajar genjang")),
          Row(
            children: [
              Expanded(child: coustemmenu(imageAssets: "asset/lingkaran.png", title: "lingkaran")),
              Expanded(child: coustemmenu(imageAssets: "asset/lingkaran.png", title: "lingkaran")),
              Expanded(child: coustemmenu(imageAssets: "asset/lingkaran.png", title: "lingkaran")),
            ],
          ),
        ],
      ),
    );
  }
}

class coustemmenu extends StatelessWidget {
  const coustemmenu({
    super.key,
    required this.imageAssets,
    required this.title,
  });

  final String imageAssets;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(color: Colors.green),
      child: Column(
        children: [
          Image.asset(
            imageAssets,
            height: 100,
          ),
          Text(title),
        ],
      ),
    );
  }
}
