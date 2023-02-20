import 'package:flutter/material.dart';
import 'contact_data.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  @override
  _ContactListState createState() {
    return _ContactListState();
  }
}

class _ContactListState extends State {
  // List kontak yang akan dibuat

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tugas List View'),
        ),
        // Membuat listview dengan separator
        body: ListView.separated(
          // Membuat pemisah antar kontak
          separatorBuilder: (context, index) => const Divider(
            color: Colors.grey,
          ),
          itemCount: kontakList.length,
          itemBuilder: (context, index) {
            return ListTile(
              // Membuat gambar avatar sesuai nama awal kontak
              leading: CircleAvatar(
                child: Text(kontakList[index].nama[0]),
              ),
              // Menampilkan nama kontak
              title: Text(
                kontakList[index].nama,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              // Menampilkan telpon kontak
              subtitle: Text(kontakList[index].nomorHP),
            );
          },
        ),
      ),
    );
  }
}
