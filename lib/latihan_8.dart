import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Twitter'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://pbs.twimg.com/profile_banners/3742082753/1588238027/1500x500',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: MediaQuery.of(context).size.height / 2.3 - 100 - 16,
                    child: CircleAvatar(
                      radius: 54,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1255787417463689217/xiLi1KIM_400x400.jpg',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: MediaQuery.of(context).size.height / 2.3 - 50,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        child: Text(
                          "Follow",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: MediaQuery.of(context).size.height / 2.3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UPN Veteran Jawa Timur',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '@',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            Text(
                              'upnvjt_official',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola\noleh Humas UPN "Veteran" Jawa Timur Kampus Bela\nNegara',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                          softWrap: true,
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              'Translate Bio',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    right: 0,
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      leading: IconButton(
                        icon: CircleAvatar(
                          backgroundColor: Colors.black,
                          child:
                              Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                      actions: [
                        IconButton(
                          icon: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(Icons.search, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Icon(Icons.more_vert, color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
