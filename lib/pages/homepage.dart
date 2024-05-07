import 'package:flutter/material.dart';
import 'package:perlutukang/pages/profile.dart';
import 'package:perlutukang/pages/transaksi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300], // Background color set to white
          elevation: 10,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300], // Background color set to light grey
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
          child: Container(
            child: Column(
              children: [
                Container(
                  width: 800,
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 300,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: AssetImage("assets/furina1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/furina2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/furina3.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: 800,
                  height: 100,
                  child: Container(
                    child: Center(
                      child: Container(
                        height: 75,
                        width: 375,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.blue,
                              size: 50,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lokasi Saya",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text("Kedungkandang, Kota Malang"),
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  width: 800,
                  height: 300,
                  child: Container(
                    child: Center(
                      child: Container(
                        height: 250,
                        width: 500,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.0),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: Offset(0, 0),
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 15),
                            Text(
                              "Kategori Jasa",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              "Temukan kebutuhan servicemu dibawah \n ini sesuai yang kamu butuhkan",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  'assets/Frame3.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Image.asset(
                                  'assets/Frame4.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Image.asset(
                                  'assets/Fram5.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Image.asset(
                                  'assets/Frame6.png',
                                  width: 50,
                                  height: 50,
                                ),
                                Image.asset(
                                  'assets/Frame57.png',
                                  width: 75,
                                  height: 75,
                                ),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Service\n AC',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                                Text('Service\n Cat',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                                Text('Service \nCCTV',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                                Text('Service\n Bangunan',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                                Text('Service\n Derek',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2),
                Container(
                  width: 800,
                  height: 500,
                  child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.0),
                              spreadRadius: 3,
                              blurRadius: 5,
                            )
                          ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            
                            
                           // Add padding only to the left side
                             
                          ],
                        ),
                      ),
                ),
              ],
            ),
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
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    icon: const Icon(Icons.home),
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
