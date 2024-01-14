import 'package:flutter/material.dart';
import 'package:wisata_pantai_indo/data/pantai_data.dart';

import '../models/pantai.dart';
import '../widgets/item_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 1 Buat appbar dengan judul Wisata Pantai Indonesia
      appBar: AppBar(
        title: Text(
          'Wisata Pantai Indonesia',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,// Sesuaikan dengan ukuran yang diinginkan
          ),
        ),
        centerTitle: true,
      ),
      // TODO: 2 Buat body dengan GridView.builder
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        padding: EdgeInsets.all(8.0),
        itemCount: pantaiList.length,
        // TODO: 3 Buat ItemCard sebagai return dari GridView.builder
        itemBuilder: (context, index) {
          Pantai pantai = pantaiList[index];
          return ItemCard(pantai: pantai);
        },
      ),
    );
  }
}
