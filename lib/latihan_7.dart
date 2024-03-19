import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> menuFavoritesFirstRow = [
    {
      'label': 'GoRide',
      'icon': 'images/goride.png',
    },
    {
      'label': 'GoCar',
      'icon': 'images/gocar.png',
    },
    {
      'label': 'GoFood',
      'icon': 'images/gofood.png',
    },
    {
      'label': 'GoSend',
      'icon': 'images/gosend.png',
    },
  ];

  final List<Map<String, dynamic>> menuFavoritesSecondRow = [
    {
      'label': 'GoMart',
      'icon': 'images/gomart.png',
    },
    {
      'label': 'GoPulsa',
      'icon': 'images/gopulsa.png',
    },
    {
      'label': 'CheckIn',
      'icon': 'images/checkin.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gojek'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Your Favorites - First Row
            Row(
              children: [
                Text(
                  'Your favorites',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.green, width: 2),
                      ),
                      child: Text(
                        'edit',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            // First Row Menu
            Wrap(
              runSpacing: 8,
              alignment: WrapAlignment.start,
              children: [
                for (final menuFavorite in menuFavoritesFirstRow)
                  _buildMenuWidget(menuFavorite),
              ],
            ),
            const SizedBox(height: 16),
            // Second Row Menu
            Wrap(
              runSpacing: 8,
              alignment: WrapAlignment.start,
              children: [
                for (final menuFavorite in menuFavoritesSecondRow)
                  _buildMenuWidget(menuFavorite),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuWidget(Map<String, dynamic> menuFavorite) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: InkWell(
        splashColor: Colors.green.withOpacity(0.4),
        highlightColor: Colors.green.withOpacity(0.1),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
                width: 60,
                child: Image.asset(
                  menuFavorite['icon'],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                menuFavorite['label'],
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
