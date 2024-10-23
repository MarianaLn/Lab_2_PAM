import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WineShopScreen(),
    );
  }
}

class WineShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 1,
        leading: Icon(Icons.location_on_outlined),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                print('Dropdown tapped');
              },
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Donnerville Drive',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Text(
                        '4 Donnerville Hall, Donnerville Drive',
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_drop_down, color: Colors.black),
                ],
              ),
            ),
          ],
        ),
        actions: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  icon: Icon(Icons.notifications_outlined, color: Colors.black54),
                  onPressed: () {},
                ),
              ),

              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.pink[800],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 24,
                    minHeight: 24,
                  ),
                  child: Text(
                    '12',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.black12, width: 1.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Colors.black54),
                  hintText: 'Search',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.mic_none, color: Colors.black54),
                ),
              ),
            ),
            SizedBox(height: 24),

            // "Shop wines by" Title
            Text(
              'Shop wines by',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // Wine Category Chips
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WineCategoryChip(label: 'Type', isSelected: true),
                WineCategoryChip(label: 'Style'),
                WineCategoryChip(label: 'Countries'),
                WineCategoryChip(label: 'Grape'),
              ],
            ),
            SizedBox(height: 16),

            // Wine Categories Grid
            Flexible(
              child: ListView(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                children: [
                  GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      WineCategoryCard(
                        imagePath: 'assets/images/poza1.jpg',
                        title: 'Red wines',
                      ),
                      WineCategoryCard(
                        imagePath: 'assets/images/poza2.jpg',
                        title: 'White wines',
                      ),
                    ],
                  ),
                  SizedBox(height: 24),

                  // New Wine Section
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(
                        'Wine',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'view all',
                        style: TextStyle(fontSize: 14, color: Colors.pink[800]),
                      ),
                    ]

                  ),

                  SizedBox(height: 16),

                  // Wine Item Cards
                  WineItemCard(
                    title: 'Ocone Bozzovich Beneventano Bianco IGT',
                    subtitle: 'Red wine (Green and Flinty)',
                    country: 'From Champagne Blanc...',
                    price: '₹ 23,256,596',
                    score: '94 / 100',
                    imageUrl: 'assets/images/poza3.jpg',
                    wineType: 'Red wine',
                    isAvailable: true,
                    isFavourite: false,
                    countryFlagPath: 'assets/images/poza8.jpg',
                    quantity: 750,
                  ),
                  WineItemCard(
                    title: '2021 Petit Chablis - Passy Le Clou',
                    subtitle: 'White wine (Green & Flinty)',
                    country: 'From Champagne Blanc...',
                    price: '₹ 23,256,596',
                    score: '94 / 100',
                    imageUrl: 'assets/images/poza4.jpg',
                    wineType: 'White wine',
                    isAvailable: true,
                    isFavourite: false,
                    countryFlagPath: 'assets/images/poza8.jpg',
                    quantity: 750,
                  ),
                  WineItemCard(
                    title: 'Philippe Fontaine Champagne Brut Rosé, Rosé de Saignée, NV',
                    subtitle: 'Sparkling wine',
                    country: 'From Champagne Blanc...',
                    price: '₹ 23,256,596',
                    score: '94 / 100',
                    imageUrl: 'assets/images/poza5.jpg',
                    wineType: 'Sparkling wine',
                    isAvailable: false,
                    isFavourite: true,
                    countryFlagPath: 'assets/images/poza8.jpg',
                    quantity: 750,
                  ),
                  WineItemCard(
                    title: "2021 Cicada's Song Rosé",
                    subtitle: 'Rose wine (Green and Flinty)',
                    country: 'From Champagne Blanc...',
                    price: '₹ 23,256,596',
                    score: '94 / 100',
                    imageUrl: 'assets/images/poza6.jpg',
                    wineType: 'Sparkling wine',
                    isAvailable: true,
                    isFavourite: false,
                    countryFlagPath: 'assets/images/poza8.jpg',
                    quantity: 750,
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WineCategoryChip extends StatelessWidget {
  final String label;
  final bool isSelected;

  WineCategoryChip({required this.label, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return RawChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (bool selected) {},
      selectedColor: Colors.pink[50],
      labelStyle: TextStyle(
        color: isSelected ? Colors.pink[800] : Colors.black54,
        fontWeight: FontWeight.bold,
      ),
      showCheckmark: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: isSelected ? Colors.pink : Colors.black12,
          width: 1.0,
        ),
      ),
    );
  }
}

class WineCategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;

  WineCategoryCard({
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(imagePath, height: 130),
              SizedBox(height: 8),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),

          Positioned(
            right: 0,
            top: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.pink[800],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),   // Top-left corner straight
                  topRight: Radius.circular(12),  // Top-right corner rounded
                  bottomLeft: Radius.circular(12), // Bottom-left rounded
                  bottomRight: Radius.circular(0), // Bottom-right corner straight
                ),
              ),
              constraints: BoxConstraints(
                minWidth: 24,
                minHeight: 24,
              ),
              child: Text(
                '123',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class WineItemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String country;
  final String price;
  final String score;
  final String imageUrl;
  final String wineType;
  final bool isAvailable;
  final bool isFavourite;
  final String countryFlagPath;
  final int quantity;

  WineItemCard({
    required this.title,
    required this.subtitle,
    required this.country,
    required this.price,
    required this.score,
    required this.imageUrl,
    required this.wineType,
    required this.isAvailable,
    required this.isFavourite,
    required this.countryFlagPath,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Container(
        color: Colors.white70,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      imageUrl,
                      height: 160,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: isAvailable ? Colors.green[100] : Colors.red[50],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            isAvailable ? "Available" : "Unavailable",
                            style: TextStyle(
                              fontSize: 12,
                              color: isAvailable ? Colors.green[900] : Colors.redAccent,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          title,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/poza7.jpg',
                              height: 16,
                              width: 16,
                            ),
                            SizedBox(width: 4),
                            Text(subtitle),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            ClipOval(
                              child: Image.asset(
                                countryFlagPath,
                                height: 16,
                                width: 16,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 4),
                            Text(country),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          // Section with background
          Container(
            color: Colors.grey[100],
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                        decoration: BoxDecoration(
                          color: isFavourite ? Colors.pink : Colors.white,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              isFavourite ? Icons.favorite : Icons.favorite_border,
                              color: isFavourite ? Colors.white : Colors.black54,
                            ),
                            SizedBox(width: 4),
                            Text(
                              isFavourite ? 'Added' : 'Favourite',
                              style: TextStyle(
                                color: isFavourite ? Colors.white : Colors.black87,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Price
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                // Score and Quantity row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Critics\' Scores: $score',
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    Text(
                      'Bottle ($quantity ml)',
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ],
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
