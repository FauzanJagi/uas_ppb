import 'package:flutter/material.dart';
import 'barang.dart'; // Import halaman barang
import 'supplier.dart'; // Import halaman supplier
import 'pembelian.dart'; // Import halaman pembelian

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: const Color.fromARGB(255, 69, 196, 255),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BarangScreen()),
                  );
                },
                icon: const Icon(Icons.shopping_cart),
                label: const Text('Barang'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 14, 227, 255), // Ganti primary dengan backgroundColor
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 15),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SupplierScreen()),
                  );
                },
                icon: const Icon(Icons.person),
                label: const Text('Supplier'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Ganti primary dengan backgroundColor
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 15),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PembelianScreen()),
                  );
                },
                icon: const Icon(Icons.receipt),
                label: const Text('Pembelian'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 45, 251, 199), // Ganti primary dengan backgroundColor
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60, vertical: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


