import 'package:flutter/material.dart';
import 'package:perlutukang/pages/homepage.dart';
import 'package:perlutukang/pages/transaksi.dart';
import 'package:perlutukang/pages/userinfo.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300], // Background color set to white
          elevation: 10,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Background color set to light grey
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 15,
                ), // Icon color set to grey
                SizedBox(width: 5),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none, // Remove border
                      hintText: "Cari Kebutuhan Servicemu...",
                      hintStyle: TextStyle(
                          color: Colors.grey, fontSize: 16), // Hint text color
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications,
                  color: Colors.grey), // Icon color set to grey
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              UserInfo(),
              ..._Buttons(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    icon: Icon(Icons.home),
                  ),
                  Text('Beranda'), // Tambahkan teks sebagai subtitle
                ],
              ),
              // Tambahkan IconButton dan teks untuk setiap item di BottomAppBar
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Transaksi()),
                      );
                    },
                    icon: Icon(Icons.history),
                  ),
                  Text('Transaksi'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Transaksi()),
                      );
                    },
                    icon: Icon(Icons.store),
                  ),
                  Text('Daftar Tukang'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Transaksi()),
                      );
                    },
                    icon: Icon(Icons.wallet_outlined),
                  ),
                  Text('Isi Saldo'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                    icon: Icon(Icons.person_2),
                  ),
                  Text('Akun'),
                ],
              ),
            ],
          ),
        ));
  }
}

List<Widget> _Buttons() {
  return [
    SizedBox(height: 10),
    _Button('Ubah Password', Icons.lock, () {}),
    SizedBox(height: 10),
    _Button('Ketentuan Layanan', Icons.chat, () {}),
    SizedBox(height: 10),
    _Button('Kebijakan Privasi', Icons.privacy_tip, () {}),
    SizedBox(height: 10),
    _Button('WhatsApp Admin', Icons.chat_rounded, () {}),
    _Button('Keluar', Icons.logout, () {}),
    _Button('Version V 1.3.6', Icons.info, () {})
  ];
}

class _Button extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  _Button(this.text, this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
        
          color: Colors.grey[200],
      borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(width: 5),
          Text(text),
        ],
      ),
      )
    );
  }
}
