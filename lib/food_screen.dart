import 'package:flutter/material.dart';

class food_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Ahmed 👋",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "📍 Cairo, Egypt",
              style: TextStyle(fontSize: 15, color: Colors.black12),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRv4L8xTarvuln7K2YW7suubZIYEXkJUXKwZg&s'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Categories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _category("Burger", "🍔", Colors.orange),
                  _category("Pizza", "🍕",  Colors.red),
                  _category("Drinks", "🥤", Colors.blue),
                  _category("Dessert", "🍩", Colors.pink),
                  _category("BBQ", "🍖", Colors.black12),
                  _category("Hot Tea", "☕", Colors.black26),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Popular Deals 🔥", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8,
              children: [
                _dealCard("Lunch Deal", "images/photo-1546069901-ba9599a7e63c.jpg"),
                _dealCard("Family Pack", "images/photo-1555939594-58d7cb561ad1.jpg"),
                _dealCard("50% OFF", "images/photo-1484723091739-30a097e8f929.jpg"),
                _dealCard("Morning Breakfast", "images/photo-1493770348161-369560ae357d.jpg"),
              ],
            ),
            SizedBox(height: 20),
            Text("Nearby Restaurants", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            _restaurantCard("Happy Restaurant 1", "images/photo-1504674900247-0877df9cc836.jpg", "4.5"),
            _restaurantCard("Happy Restaurant 2", "images/photo-1504674900247-0877df9cc836.jpg", "4.5"),
            _restaurantCard("Happy Restaurant 3", "images/photo-1504674900247-0877df9cc836.jpg", "4.5"),
            SizedBox(height: 20),
            Text("Recent Orders", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _recentOrder("Margherita Pizza", "Delivered yesterday"),
                  _recentOrder("Chicken Shawarma", "Delivered yesterday"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _category(String label, String emoji, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color,
            child: Text(
              emoji,
              style: const TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(height: 5),
          Text(label, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
  Widget _dealCard(String title, String imgUrl) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(imgUrl),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(10),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
  Widget _restaurantCard(String name, String imgUrl, String rate) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage(imgUrl),
          width: 60,
          height: 60,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text("BBQ • Burger • Fast Food"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Colors.orange, size: 18),
          Text(rate),
        ],
      ),
    );
  }
  Widget _recentOrder(String title, String status) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Row(
        children: [
          Icon(Icons.history, color: Colors.orange, size: 20),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15), overflow: TextOverflow.ellipsis),
                Text(status, style: TextStyle(color: Colors.grey, fontSize: 11)),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Text(
              "Re-order",
              style: TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}