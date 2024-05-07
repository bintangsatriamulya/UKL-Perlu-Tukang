import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
  elevation: 3, // Tambahkan nilai elevasi di sini
  borderRadius: BorderRadius.circular(10), // Border radius juga harus diterapkan di Material
  child: Container(
    width: 500,
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/ayaka.jpg"),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _UserInfoItem('Nama: Kamisato Clan'),
                _UserInfoItem('Email: Kamisatoclaninzuma@gmail.com'),
                _UserInfoItem('No Telp: 1234567890'),
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Edit"),
                ),
              ],
            ),
          ],
        )
      ],
    ),
  ),
);

  }
}

class _UserInfoItem extends StatelessWidget {
  final String text;

  _UserInfoItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}


