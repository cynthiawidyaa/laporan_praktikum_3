import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hobby",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Hobby"),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<Map<String, String>> people = [
    {
      "name": "Zayn Malik",
      "hobby": "Singing",
      "image":
          'https://cdn.sanity.io/images/zqgvoczt/global/d5c57d1032c6d60dd7bace64952edee735fee618-1000x1500.jpg'
    },
    {
      "name": "Taylor Swift",
      "hobby": "Reading",
      "image":
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHWO99RLP180914r451RyDf9dTDeaVIEnB6Q&usqp=CAU'
    },
    {
      "name": "Na Jaemin",
      "hobby": "Painting",
      "image":
          'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/ayojogjakarta/images/post/articles/2021/07/24/45302/jaemin.jpg'
    },
    {
      "name": "Jennie",
      "hobby": "Cooking",
      "image":
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Kim_Jennie_%28%EA%B9%80%EC%A0%9C%EB%8B%88%29_05.jpg/1200px-Kim_Jennie_%28%EA%B9%80%EC%A0%9C%EB%8B%88%29_05.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                people[index]['image']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(people[index]['name']!),
            subtitle: Text(people[index]['hobby']!),
            trailing:
                Icon(Icons.more_vert), // Tambahkan ikon titik tiga di kanan
          ),
        );
      },
    );
  }
}
