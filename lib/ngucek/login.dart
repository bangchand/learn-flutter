import 'package:flutter/material.dart';

class LoginNgucek extends StatefulWidget {
  const LoginNgucek({super.key});

  @override
  State<LoginNgucek> createState() => _LoginNgucekState();
}

class _LoginNgucekState extends State<LoginNgucek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 12, bottom: 12, left: 20, right: 20),
          width: 375,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/ngucek/logo.png',
                    width: 115,
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 24,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/ngucek/motor.png',
                        width: 300,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 335,
                      child: Text(
                        'Hai, Driver Ngucek! Siap untuk menjalankan misi Ngucek?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      'Login sekarang untuk menerima misi Ngucek!',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(144, 144, 144, 1),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        width: 1000,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(8),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(142, 103, 173, 1),
                              Color.fromRGBO(164, 112, 185, 1),
                            ],
                          ),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          'LOG IN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        width: 1000,
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Color.fromRGBO(142, 103, 173, 1),
                          ),
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Text(
                          'DAFTAR MENJADI DRIVER',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromRGBO(142, 103, 173, 1),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Klik pada Daftar untuk memulai pendaftaran, dan melihat status pendaftaran Anda.',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(144, 144, 144, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'All rights reserved',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(144, 144, 144, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
