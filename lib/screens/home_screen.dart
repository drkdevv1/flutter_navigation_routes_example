import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.grey),
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'onBoardingScreen');
            return;
          },
        ),
        title: Center(
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Image.asset(
              'assets/lunkgem-icon.png',
              width: 24,
              height: 24,
            ),
            const SizedBox(width: 4),
            const Text(
              'Lunkgem',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        actions: const [
          CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHXiFMU8HHoBaj0s-ZWBYjGhcL5J6WfQi7rw&s'),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Color.fromARGB(60, 79, 78, 78),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(17.0)),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          // Sección de Popular
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Today',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'See all  ',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCard(
                      'assets/img1.png', 'Happier than ever', 'Billie Eilish'),
                  _buildCard('assets/img2.png', 'Julliete', 'Dewa 19 Ft. Ello'),
                  _buildCard('assets/img3.jpeg', 'About You', 'The 1975'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          // Sección de Playlist
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Playlist',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'See all  ',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCard('assets/img4.jpg', 'Playlist 1', '123'),
                  _buildCard('assets/img5.jpg', 'Playlist 2', '456'),
                  _buildCard('assets/img6.jpg', 'Playlist 3', '789'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String imagePath, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: const EdgeInsets.all(0),
            clipBehavior: Clip.hardEdge,
            child: SizedBox(
              width: 150,
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
