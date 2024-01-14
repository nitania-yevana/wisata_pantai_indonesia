import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wisata_pantai_indo/models/pantai.dart';

import 'favorite_screen.dart';

class DetailScreen extends StatefulWidget {
  Pantai pantai;
  DetailScreen({super.key, required this.pantai});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;
  bool isSignedIn = false;

  @override
  void initState() {
    super.initState();
    _checkSignInStatus();  //memeriksa status sign in saat layar dimuat
    _loadFavoriteStatus();  // memeriksa status favorite saat layar dimuat
  }

  //Memeriksa Status Sign in
  void _checkSignInStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool signedIn = prefs.getBool('isSignedIn') ?? false ;
    setState(() {
      isSignedIn = signedIn;
    });
  }

  //memeriksa Status Favorite
  void _loadFavoriteStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool favorite = prefs.getBool('favorite_${widget.pantai.name}') ?? false;
    setState(() {
      isFavorite = favorite;
    });
  }

  Future<void> _toggleFavorite() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Memeriksa apakah pengguna sudah sign ini
    if(!isSignedIn) {
      Navigator.pushReplacementNamed(context, '/sign_in');
      return;
    }

    bool favoriteStatus = !isFavorite;
    prefs.setBool('favorite_${widget.pantai.name}', favoriteStatus);

    setState(() {
      isFavorite = favoriteStatus;
    });
    // Tambahkan logika untuk memperbarui tampilan FavoriteScreen
    if (isFavorite) {
      // Tambahkan objek pantai ke daftar favorit di tampilan FavoriteScreen
      FavoriteScreen.addFavorite(widget.pantai);
    } else {
      // Hapus objek pantai dari daftar favorit di tampilan FavoriteScreen
      FavoriteScreen.removeFavorite(widget.pantai);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // DetailHeader
              Stack(
                children: [
                  // image utama
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        widget.pantai.imageAsset,
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // tombol back kustom
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 32,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[100]?.withOpacity(0.8),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // DetailInfo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    // info atas (nama pantai dan tombol favorit
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.pantai.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: (){
                            _toggleFavorite();
                          },
                          icon: Icon(
                            isSignedIn && isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isSignedIn && isFavorite ? Colors.red : null,
                          ),
                        )
                      ],
                    ),
                    // info tengah (lokasi, fasilitas, deskripsi)
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.place,
                          color: Colors.red,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const SizedBox(
                          width: 70,
                          child: Text(
                            'Lokasi',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          ': ${widget.pantai.location}',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.umbrella,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const SizedBox(
                          width: 70,
                          child: Text(
                            'Fasilitas',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(': ${widget.pantai.facility}'),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Divider(
                      color: Colors.deepPurple.shade100,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    // info bawah (deskripsi)
                    const Text(
                      'Deskripsi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(widget.pantai.description),
                  ],
                ),
              ),
              // DetailGallery
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: Colors.deepPurple.shade100,
                    ),
                    const Text(
                      'Galeri',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.pantai.imageUrls.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: Colors.blueGrey.shade100,
                                    width: 2,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: widget.pantai.imageUrls[index],
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => Container(
                                      width: 120,
                                      height: 120,
                                      color: Colors.blueGrey[50],
                                    ),
                                    errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}