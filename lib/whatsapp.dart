import 'package:flutter/material.dart';

class whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("WhatsApp"),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 15),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/b5/63/d2/b563d2106ee7ceeedb43914eb99a1dc7.jpg'),
            ),
            title: const Text("Ahmed Mohamed",
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: const Text("السلام عليكم، ازيك يا هندسة؟"),
            trailing: const Text("10:30 PM"),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
    );
  }
}