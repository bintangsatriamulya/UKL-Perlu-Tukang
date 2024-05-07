import 'package:flutter/material.dart';
import 'package:perlutukang/pages/homepage.dart';
import 'package:perlutukang/pages/transaksi.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
          child: Column(children: [
            //INFO PROFILE
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(16),
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
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/ayaka.jpg'),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Bintang Satria Mulya Budi',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'bintangsatriamulya88@gmail.com',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 14),
                      ),
                      Text(
                        '+628888337777',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 14),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Edit'),
                  ),
                ],
              ),
            ),

            //Features

            Container(
              color: Color.fromARGB(255, 234, 234, 234),
              width: MediaQuery.of(context).size.width,
              height: 10,
            ),

            //Password
            Container(
                padding: const EdgeInsets.all(16),
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
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.lock,
                          size: 28,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Ubah Password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 28,
                    ),
                  ],
                )),
            SizedBox(
              height: 15,
            ),
            //Ketentuan Layanan
            Container(
                padding: const EdgeInsets.all(16),
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
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.chat,
                          size: 28,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Ketentuan Layayan',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                )),

            //Privasi
            SizedBox(
              height: 15,
            ),
            //Ketentuan Layanan
            Container(
                padding: const EdgeInsets.all(16),
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
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.lock,
                          size: 28,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Kebijakan Privasi',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                )),

            //admin

            SizedBox(
              height: 15,
            ),
            //Ketentuan Layanan
            Container(
                padding: const EdgeInsets.all(16),
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
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.admin_panel_settings,
                          size: 28,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'WhatsApp Admin',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                )),

            SizedBox(
              height: 15,
            ),

            ///Keluar
            Container(
                padding: const EdgeInsets.all(16),
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
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.logout,
                          size: 28,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Keluar',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                )),

            //versi

            Container(
              color: Color.fromARGB(255, 245, 245, 245),
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: Center(child: Text('Version V 1.3.6')),
            ),
          ]),

          //feature
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
