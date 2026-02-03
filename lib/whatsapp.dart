import 'package:flutter/material.dart';

class whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("WhatsApp"),
        actions: [
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                _buildFilterChip("All"),
                _buildFilterChip("Unread"),
                _buildFilterChip("Groups"),
                _buildFilterChip("Friends"),
                _buildFilterChip("Collage"),
                _buildFilterChip("Family"),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://i.pinimg.com/736x/b5/63/d2/b563d2106ee7ceeedb43914eb99a1dc7.jpg'),
                  ),
                  title: Text("Ahmed Mohamed", style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text("السلام عليكم، ازيك يا هندسة؟"),
                  trailing: Text("10:30 PM"),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}Widget _buildFilterChip(String label) {
  return Container(
    margin: EdgeInsets.only(right: 8),
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: Colors.black,
        width: 3.0,
      )
    ),
    child: Text(
      label,
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}