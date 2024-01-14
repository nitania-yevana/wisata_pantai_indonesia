import 'package:flutter/material.dart';
import 'package:wisata_pantai_indo/data/pantai_data.dart';
import 'package:wisata_pantai_indo/models/pantai.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key});

  // Buat daftar untuk menyimpan item favorit
  static List<Pantai> favoriteList = [];

  // Metode untuk menambahkan item favorit
  static void addFavorite(Pantai pantai) {
    favoriteList.add(pantai);
    // Perbarui tampilan ketika item favorit ditambahkan
    if (onListUpdated != null) {
      onListUpdated!();
    }
  }

  // Metode untuk menghapus item favorit
  static void removeFavorite(Pantai pantai) {
    favoriteList.remove(pantai);
    // Perbarui tampilan ketika item favorit dihapus
    if (onListUpdated != null) {
      onListUpdated!();
    }
  }

  // Callback untuk memperbarui tampilan
  static void Function()? onListUpdated;

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    // Dapatkan daftar wisata yang sudah difavoritkan
    List<Pantai> favoritePantais = FavoriteScreen.favoriteList;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Pantai'),
      ),
      body: favoritePantais.isEmpty
          ? Center(
        child: Text(
          'Belum ada wisata yang difavoritkan.',
          style: TextStyle(fontSize: 16),
        ),
      )
          : ListView.builder(
        itemCount: favoritePantais.length,
        itemBuilder: (context, index) {
          final pantai = favoritePantais[index];
          return Card(
            margin:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(pantai.imageAsset),
              ),
              title: Text(pantai.name),
              subtitle: Text(pantai.location),
              onTap: () {
                // Implementasi aksi ketika item ditekan
                // Misalnya, navigasi ke halaman detail
                Navigator.pushNamed(context, '/detail', arguments: pantai);
              },
            ),
          );
        },
      ),
    );
  }
}