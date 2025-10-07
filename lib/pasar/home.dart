import 'package:flutter/material.dart';

class HomePasar extends StatefulWidget {
  const HomePasar({super.key});

  @override
  State<HomePasar> createState() => _HomePasarState();
}

class Sayur {
  final String gambar;
  final String nama;
  final double harga;
  final String toko;

  const Sayur({
    required this.gambar,
    required this.nama,
    required this.harga,
    required this.toko,
  });
}

class _HomePasarState extends State<HomePasar> {
  List<Sayur> sayurs = [
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
    Sayur(
      gambar: 'assets/images/cat_flat.jpeg',
      nama: 'nama',
      harga: 1.000,
      toko: 'toko',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pasar',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    width: 160,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Color(0xffE7E7E7),
                        hint: Row(
                          spacing: 9,
                          children: [
                            Icon(
                              Icons.search_rounded,
                              color: Color(0xff7C7C7C),
                            ),
                            Text(
                              'Cari barang',
                              style: TextStyle(color: Color(0xff7C7C7C)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/pasar/cart.png',
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(6),
                        ),
                        color: Color(0xff75AC09),
                      ),
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      child: Text(
                        'Semua',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(6),
                        ),
                        color: Color(0xffE7E7E7),
                      ),
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      child: Text(
                        'Sayuran',
                        style: TextStyle(color: Color(0xff7C7C7C)),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(6),
                        ),
                        color: Color(0xffE7E7E7),
                      ),
                      padding: EdgeInsetsGeometry.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      child: Text(
                        'Bumbu Dapur',
                        style: TextStyle(color: Color(0xff7C7C7C)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    spacing: 24,
                    children: [
                      Row(
                        spacing: 8,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/kangkung.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Kangkung', style: TextStyle(fontSize: 14)),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/bayam.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Bayam', style: TextStyle(fontSize: 14)),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/kopi.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Kopi'),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        spacing: 8,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/apel.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Apel', style: TextStyle(fontSize: 14)),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/anggur.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Anggur', style: TextStyle(fontSize: 14)),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/daging.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Daging'),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        spacing: 8,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/jagung.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Jagung', style: TextStyle(fontSize: 14)),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/sawi.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Sawi', style: TextStyle(fontSize: 14)),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/tomat.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Tomat'),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        spacing: 8,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/kangkung.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Kangkung', style: TextStyle(fontSize: 14)),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/bayam.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Bayam', style: TextStyle(fontSize: 14)),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            spacing: 3,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pasar/kopi.png',
                                width: 104,
                                height: 104,
                              ),
                              Text('Kopi'),
                              Text(
                                '30.000/Ikat',
                                style: TextStyle(fontSize: 12),
                              ),
                              Text(
                                'Toko Maju Terus',
                                style: TextStyle(
                                  color: Color(0xff7C7C7C),
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 11, bottom: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/pasar/pasar.png',
                        width: 20,
                        height: 20,
                      ),
                      Text('Pasar', style: TextStyle(fontSize: 10)),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/pasar/pesanan.png',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        'Pesanan',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xffBBBBBB),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/pasar/dagangan.png',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        'Dagangan',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xffBBBBBB),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/pasar/profil.png',
                        width: 20,
                        height: 20,
                      ),
                      Text(
                        'Profil',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xffBBBBBB),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
