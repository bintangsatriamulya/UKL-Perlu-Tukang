import 'package:flutter/material.dart';
import 'package:perlutukang/artikel.dart';
import 'package:perlutukang/pages/containerjasa.dart';
import 'package:perlutukang/pages/profile.dart';
import 'package:perlutukang/pages/transaksi.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.grey[500], // Background color set to white
          elevation: 10,
          title: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
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
              icon: const Icon(Icons.notifications,
                  color: Colors.white), // Icon color set to grey
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                   color: Colors.grey,
                  width: 800,
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 300,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: const DecorationImage(
                            image: AssetImage("assets/furina1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage("assets/furina2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 300,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage("assets/furina3.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),


                Container(
                  width: 800,
                  height: 100,
                   color: Colors.grey,
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
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
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
                const SizedBox(height: 4),
                Container(
                  width: 800,
                  height: 300,
                  color: Colors.grey,
                  child: Center(
                    child: Container(
                      height: 250,
                      width: 500,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 238, 197, 245),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.0),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 0),
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 15),
                          const Text(
                            "Kategori Jasa",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "Temukan kebutuhan servicemu dibawah \n ini sesuai yang kamu butuhkan",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: 16),
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
                          const SizedBox(height: 4),
                          const Row(
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
                const SizedBox(height: 25),


                Container(
                   color: Colors.grey,
                   height: 300,
                  child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.0),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 0),
                        )
                      ]),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Penyedia Jasa Terdekat",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            JasaTerdekat(
                              placeName: 'TOKO PERABOTAN',
                              address: 'Jalan Raya Soekarno Hatta',
                            ),
                            JasaTerdekat(
                              placeName: 'TOKO UKL',
                              address: 'Tetap Semagat dan Jangan Menyerah!!',
                            ),
                            JasaTerdekat(
                              placeName: 'KEDAI TOK DALANG',
                              address: 'Kampung Durian Runtuh Malaysia',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                ),
          const SizedBox(
                  height: 15,),


                Container(
                   color: Colors.grey,
                   height: 1000,
                  child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.0),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 0),
                        )
                      ]),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  //SET THE WIDTH
                  width: MediaQuery.of(context).size.width,

                  child: const Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Text(
                        "Artikel Terbaru",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      SizedBox(height: 18),
                      Column(
                        children: [
                          ArtikelNews(
                            title: 'Update Aplikasi Perlu Tukang', 
                            imageAsset: 'assets/ayaka.jpg'),
                            ArtikelNews(
                            title: 'Update Aplikasi perlu Tukang Untuk Mitra', 
                            imageAsset: 'assets/furina2.jpg'),
                            ArtikelNews(
                            title: 'Update Aplikasi perlu Tukang Untuk Konsumen', 
                            imageAsset: 'assets/furina1.png')
                        ],
                      )
                    ],
                  ),
                ),
                )
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
                  const Text('Beranda'), // Tambahkan teks sebagai subtitle
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
                    icon: const Icon(Icons.history),
                  ),
                  const Text('Transaksi'),
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
                    icon: const Icon(Icons.store),
                  ),
                  const Text('Daftar Tukang'),
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
                    icon: const Icon(Icons.wallet_outlined),
                  ),
                  const Text('Isi Saldo'),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile()),
                      );
                    },
                    icon: const Icon(Icons.person_2),
                  ),
                  const Text('Akun'),
                ],
              ),
            ],
          ),
        ));
  }
}
