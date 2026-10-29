
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row and Column'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  KotakHati(
                    warna: Colors.blue,
                    teks: 'Biru',
                  ),
                  SizedBox(width: 16),
                  KotakHati(
                    warna: Colors.green,
                    teks: 'Hijau',
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  KotakHati(
                    warna: Colors.orange,
                    teks: 'Oranye',
                  ),
                  SizedBox(width: 16),
                  KotakHati(
                    warna: Colors.purple,
                    teks: 'Ungu',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakHati extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakHati({
    super.key,
    required this.warna,
    required this.teks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        color: warna,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.black26,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite,
            color: Colors.red,
            size: 48,
          ),
          const SizedBox(height: 8),
          Text(
            teks,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
