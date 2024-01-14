import 'package:flutter/material.dart';
import 'package:wisata_pantai_indo/data/pantai_data.dart';
import 'package:wisata_pantai_indo/models/pantai.dart';
import 'package:wisata_pantai_indo/screens/detail_screen.dart';

import 'detail_screen.dart'; // TODO: 9. Import DetailScreen

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  List<Pantai> _filteredPantai = pantaiList;
  final String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  List<Pantai> _filterPantaiByQuery(String query) {
    return pantaiList
        .where((pantai) =>
    pantai.name.toLowerCase().contains(query.toLowerCase()) ||
        pantai.location.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 2. Buat appbar dengan judul Pencarian Pantai
      appBar: AppBar(
        title: const Text('Cari Destinasi: Pantai'),
      ),
      // TODO: 3. Buat body berupa Column
      body: Column(
        children: [
          // TODO: 4. Buat TextField pencarian sebagai anak dari Column
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.lightBlue[50],
              ),
              child: TextField(
                controller: _searchController,
                onChanged: (query) {
                  setState(() {
                    // Tidak perlu lagi mengubah _searchQuery
                    _filteredPantai = _filterPantaiByQuery(query);
                  });
                },

                // TODO: 6. Implementasi fitur pencarian
                decoration: InputDecoration(
                  hintText: 'Ketik nama atau lokasi pantai...',
                  prefixIcon: const Icon(Icons.search),
                  // TODO: 7. Implementasi pengosongan input
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.lightBlue),
                  ),
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
              ),
            ),
          ),
          // TODO: 5. Buat ListView hasil pencarian sebagai anak dari Column
          Expanded(
            child: ListView.builder(
              itemCount: _filteredPantai.length,
              itemBuilder: (_, index) {
                final pantai = _filteredPantai[index];


                // TODO: 8. Implementasi GestureDetector dan Hero animation
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(pantai: pantai), // TODO: 10. Kirim objek Pantai ke DetailScreen
                      ),
                    );
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          width: 100,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              pantai.imageAsset,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pantai.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(pantai.location),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}