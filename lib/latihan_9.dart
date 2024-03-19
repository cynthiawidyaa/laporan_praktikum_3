import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peduli Lindungi'),
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Entering a public space?',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Stay alert to stay safe',
                                style: TextStyle(fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'images/scan_new.png', 
                          width: 80, 
                          height: 80, 
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.arrow_drop_down),
                                const SizedBox(width: 5),
                                Text('Check-In Preference'),
                              ],
                            ),
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.qr_code),
                              label: const Text('Check In'),
                              style: ElevatedButton.styleFrom(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text(
                        '',
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildMenuRow([
                      _buildMenuItem('Covid-19 Vaccine', 'images/covid_vaccine.png', 'Covid-19 Vaccine'),
                      _buildMenuItem('Covid-19 Test Result', 'images/covid_test.png', 'Covid-19 Test Result'),
                      _buildMenuItem('EHAC', 'images/ehac.png', 'EHAC'),
                    ]),
                    const SizedBox(height: 20),
                    _buildMenuRow([
                      _buildMenuItem('Aturan Perjalanan', 'images/aturan.png', 'Aturan Perjalanan'),
                      _buildMenuItem('Teledokter', 'images/teledokter.png', 'Teledokter'),
                      _buildMenuItem('Pelayanan Kesehatan', 'images/pelayanan.png', 'Pelayanan Kesehatan'),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }

  Widget _buildMenuItem(String title, String imagePath, String featureName) {
    return SizedBox(
      width: 100,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Text(
              featureName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
