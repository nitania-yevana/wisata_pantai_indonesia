import 'package:wisata_pantai_indo/models/pantai.dart';

var pantaiList = [
  // Pantai(
  //   name: 'Pantai Kuta',
  //   facility: 'Pantai Kuta memiliki berbagai fasilitas yang lengkap untuk para wisatawan, antara lain Penyewaan papan selancar, Penyewaan kursi berjemur, Toilet umum, Restoran, Kafe',
  //   location: 'Denpasar, Bali',
  //   description: [
  //     'Pantai Kuta adalah salah satu pantai paling terkenal di Bali, Indonesia.',
  //     'Pantai ini terletak di sebelah selatan Kota Denpasar, dan berjarak sekitar 1,5 km dari Bandara Internasional I Gusti Ngurah Rai.',
  //     'Pantai Kuta memiliki garis pantai sepanjang sekitar 4 km, dengan pasir putih yang lembut dan air laut yang jernih.',
  //     // Informasi tambahan bisa ditambahkan sebagai elemen list berikutnya
  //     'Informasi Pantai:',
  //     'Lokasi: Desa Kuta, Kecamatan Kuta, Kabupaten Badung, Bali',
  //     'Jarak dari Bandara Internasional I Gusti Ngurah Rai: 1,5 km',
  //     'Luas: 4 km',
  //     'Fasilitas: Area parkir, tempat makan, penginapan, sewa perahu, toilet, toko oleh-oleh, fasilitas olahraga',
  //     'Daya Tarik: Pasir putih lembut, ombak landai cocok untuk surfing, sunset spektakuler',
  //     '',
  //     'Aktivitas di Sekitar Pantai:',
  //     'Surfing: Pantai Kuta adalah surga bagi peselancar pemula dan menengah, sekolah surfing tersedia.',
  //     'Bodyboarding: Meluncurlah di atas ombak dengan papan bodyboard yang ringan dan mudah dikendalikan.',
  //     'Stand Up Paddleboarding: Jelajahi pantai dari perspektif berbeda sambil berolahraga.',
  //     'Snorkeling: Di beberapa area tertentu, temukan keindahan terumbu karang dan ikan warna-warni.',
  //     'Sunset Dinner: Nikmati panorama matahari terbenam yang tak terlupakan sambil bersantap di restoran tepi pantai.',
  //     '',
  //     'Panduan Perjalanan:',
  //     'Cara mencapai lokasi:',
  //     'Kendaraan pribadi: Ikuti rute Jalan By Pass Ngurah Rai menuju Jalan Raya Uluwatu, belok kanan ke Jalan Raya Jimbaran, Pantai Kuta ada di sebelah kiri.',
  //     'Taksi: Pesan taksi dari bandara atau hotel, tarif sekitar Rp100.000.',
  //     'Bus: Naik bus Trans Sarbagita Koridor 3 dari bandara ke Pantai Kuta, tarif sekitar Rp4.000.',
  //     '',
  //     'Tips wisata:',
  //     'Datanglah di pagi hari atau sore hari untuk menghindari keramaian dan terik matahari.',
  //     'Gunakan tabir surya dan topi untuk melindungi kulit dan kepala.',
  //     'Hormati budaya dan adat istiadat setempat.',
  //   ],
  //   imageAsset: 'images/Pantai Kuta, Bali.jpg',
  //   imageUrls: [
  //     'https://1.bp.blogspot.com/-wcNBMCeokBo/XQ3MU6OqzbI/AAAAAAAAAlM/FlFXYHWsE1Y54Td_gPHMM4zSTj2V1QJYwCLcBGAs/s1600/Berjemur-Di-Pantai-Kuta-Bali.jpeg',
  //     'https://1.bp.blogspot.com/-iBJ0GYZc37c/VQu0_2mhnII/AAAAAAAAI4k/q9i96ZYodIo/s1600/copy_DSC_0243.jpg',
  //     'https://a.cdn-hotels.com/gdcs/production78/d659/bf01c29d-eab1-4443-93e0-142ce5c6836b.jpg',
  //     'https://lh5.googleusercontent.com/p/AF1QipOHtfsNzXlDnhm9zpp8VNrC0v3ReWi-ZVEx65Eg',
  //   ],
  //   isFavorite: false,
  // ),

  Pantai(
    name: 'Pantai Kuta',
    facility : 'Penyewaan papan selancar, Penyewaan kursi berjemur, Toilet umum, Restoran,Kafe',
    location: 'Denpasar, Bali',
    description:
    'Pantai Kuta adalah salah satu pantai paling terkenal di Bali, Indonesia.'
    'Pantai ini terletak di sebelah selatan Kota Denpasar, dan berjarak sekitar 1,5 km dari Bandara Internasional I Gusti Ngurah Rai. Pantai Kuta memiliki garis pantai sepanjang sekitar 4 km, dengan pasir putih yang lembut dan air laut yang jernih.',

    imageAsset: 'images/Pantai Kuta, Bali.jpg',
    imageUrls: [
      'https://1.bp.blogspot.com/-wcNBMCeokBo/XQ3MU6OqzbI/AAAAAAAAAlM/FlFXYHWsE1Y54Td_gPHMM4zSTj2V1QJYwCLcBGAs/s1600/Berjemur-Di-Pantai-Kuta-Bali.jpeg',
      'https://1.bp.blogspot.com/-iBJ0GYZc37c/VQu0_2mhnII/AAAAAAAAI4k/q9i96ZYodIo/s1600/copy_DSC_0243.jpg',
      'https://a.cdn-hotels.com/gdcs/production78/d659/bf01c29d-eab1-4443-93e0-142ce5c6836b.jpg',
      'https://lh5.googleusercontent.com/p/AF1QipOHtfsNzXlDnhm9zpp8VNrC0v3ReWi-ZVEx65Eg',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Jimbaran',
    facility : 'Area parkir, tempat makan, tempat penginapan, sewa perahu, toilet, toko oleh-oleh, dan fasilitas olahraga',
    location: 'Desa Jimbaran, Bali.',
    description:
    'Pantai Jimbaran terkenal dengan pasir putihnya yang halus, air lautnya yang jernih, dan sunsetnya yang indah.',
    imageAsset: 'images/Pantai Jimbaran, Bali.jpg',
    imageUrls: [
      'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSN_8gs69GCmF2Fk3rCVpivUlemzUYa0mLlZ1y0bMkPLR2nEsHpYtpjVTEXvpS_',
      'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRYeJcg9ZvpP5wG54dr0gFiZ88FFlUZ-hphWVxVytZW2ZNGrMv5j1GTPqvwTJS1',
      'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSsyUtYRgNCzI8LnDgFcM9079L9WlZ41Zo9vfHvQOGiPwckjRvVpuzgNGwDOAhV',
      'https://www.water-sport-bali.com/wp-content/uploads/2016/05/Wahana-Air-Di-Tanjung-Benoa-Terbaru.jpg',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Nihiwatu',
    facility : 'Resor mewah, restoran, bar, spa, dan pusat penyewaan peralatan olahraga air.',
    location: 'Sumba Barat, Nusa Tenggara Timur.',
    description:
    'Pantai Nihiwatu adalah salah satu pantai terindah di Indonesia yang terletak di Pulau Sumba, Nusa Tenggara Timur. Pantai ini terkenal dengan pasir putihnya yang lembut, air lautnya yang jernih, dan ombaknya yang menantang.',
    imageAsset: 'images/Pantai Nihiwatu, Sumba.jpg',
    imageUrls: [
      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRpKATouk4tGMK3NQEkQvW1stnbOieNWfiVC-2wJ9hKAL4YfbpvmODm7fABpwzl',
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTK6pqYr-mox1Z3HtXyACPpegivuFx1t5eLoGzwebSIY2ik0n0OgJkAaoo_NWiI',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM13uJ3OuDvOZ_F0NzW9LyM2LvBA1fT5qr8VMDaZFGt3r9DvULj0FVfZBiYYxa',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Nusa Dua',
    facility : 'Gazebo, toilet umum, warung makan, dan tempat parkir, lapangan golf, taman, dan pusat perbelanjaan. ',
    location: 'Bali',
    description:
    'Pantai Nusa Dua adalah salah satu pantai terpopuler di Bali yang terletak di Kecamatan Kuta Selatan, Kabupaten Badung. Pantai ini terkenal dengan pasir putihnya yang lembut, air lautnya yang jernih, dan pemandangan matahari terbenamnya yang indah.',
    imageAsset: 'images/Pantai Nusa Dua, Bali.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGrIb6S8vIlMiNDytgV8sztQ006oS8F8fOnUxKkYa7MSBiJ5PeEhz5rzLC7cm0',
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTxDjj5CfxD801lv_R5t8f6384axYeJvc2PMj8pQdAROHNnE1aULlC0AZI7iWDF',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgIbNhT56ofoC19YpRTGpJHf2hSJtQdP-2XBmFd1ZXeTJvm12lrOAobiJtBA_Q',
      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSAFW3VxSH4biTz6eDePgrafRELlJeK0DdstPEZVfnwLJAhezdfib6K46CtB2kM',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Ora',
    facility : 'Warung makan sederhana yang menjual makanan dan minuman lokal',
    location: 'Desa Sekaroh, Kecamatan Jerowaru, Lombok Timur.',
    description:
    'Pantai Ora adalah salah satu pantai terindah di Indonesia yang terletak di Pulau Seram, Maluku Tengah. Pantai ini terkenal dengan pasir putihnya yang lembut, air lautnya yang jernih, dan pemandangan bawah lautnya yang menakjubkan. ',
    imageAsset: 'images/Pantai Ora, Maluku.jpg',
    imageUrls: [
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSzmapT6-ezYnkYeXclxQeE9k3XINGDbbIMgLz-S3zySXGz7VHvsQ7lVeMRnQK1',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQOqv3QILAj-S094NU7BtWyETyLFXM6SdFh9s2RIPcR2SN4t1GAtFxO7kT2ptu',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV3eFHws9E2ZE0KJFNPI3lo1h_C4i5LzbYzoDATe8I4j5S0ee8Na8YNn9sWZI4',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Pandawa',
    facility : 'Gazebo, toilet umum, warung makan, dan tempat parkir.',
    location: 'Jl. Pantai Pandawa, Kutuh, Kec. Kuta Sel., Kabupaten Badung, Bali',
    description:
    'Pantai Pandawa adalah salah satu pantai terpopuler di Bali yang terletak di Kecamatan Kuta Selatan, Kabupaten Badung. Pantai ini terkenal dengan pasir putihnya yang lembut, air lautnya yang jernih, dan pemandangan tebingnya yang unik.',
    imageAsset: 'images/Pantai Pandawa, Bali.jpg',
    imageUrls: [
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQk8WNCRG6yA_mpmuJFzKkWSh5I9_VQ4l3WsrQ8lor4TZvXQ1AK_C9EozoqXFj5',
      'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQevSGRVTxseSsw8k2vzR5iS6IAXd4GsiRmxqJO7yZJ0y8D3bL2wMESYkV4Zhqb',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx5H-BLXI03s5GnGXvT90vBgRcv9F7Fa1JGLR6bBbUjOV4R4kh2ov07eYCLng4',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Komodo',
    facility : 'Terbatas, dengan beberapa gazebo sederhana, toilet umum, dan warung makan lokal (pilihan terbatas).',
    location: 'Desa Komodo, Kecamatan Komodo, Kabupaten Manggarai Barat, Nusa Tenggara Timur.',
    description:
    'Pantai Komodo adalah salah satu pantai terindah di Indonesia yang terletak di Pulau Komodo, Nusa Tenggara Timur. Pantai ini terkenal dengan pasir putihnya yang lembut, air lautnya yang jernih, dan pemandangan bawah lautnya yang menakjubkan. ',
    imageAsset: 'images/Pantai Pink Beach, Pulau Komodo.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9d1B7yWeF9W3eWmwaZQ9RD3an4yvrbHzsVN3J0u2-JbHsrnKOaMJpnXanSGdq',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Pink Sand Beach Lombok',
    facility : 'Gazebo sederhana, warung makan lokal',
    location: 'Desa Sekaroh, Lombok Timur (Terpencil, jalan kaki/perahu).',
    description:
    'Pantai Pink Sand Beach, atau Pantai Tangsi, adalah salah satu pantai terindah di Indonesia yang terletak di Pulau Lombok, Nusa Tenggara Barat. Pantai ini terkenal dengan pasirnya yang berwarna pink, air lautnya yang jernih, dan pemandangan bawah lautnya yang menakjubkan. ',
    imageAsset: 'images/Pantai Pink Sand Beach Lombok.jpg',
    imageUrls: [
    'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT_UWP-7SEUBbFPNYNBjQbOtxkxNDw7U_Kr-EBprMN8fDdQ212Gl_nSm0E_ZH72',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Sanur',
    facility : 'Gazebo, toilet umum, warung makan, dan tempat parkir,  berenang, snorkeling, diving, surfing, dan bersantai, hotel bintang lima hingga homestay .',
    location: '',
    description:
    'Pantai Sanur adalah salah satu pantai terpopuler di Bali yang terletak di Kecamatan Denpasar Selatan, Kota Denpasar, Bali. Pantai ini terkenal dengan pasir putihnya yang lembut, air lautnya yang jernih, dan pemandangan matahari terbenamnya yang indah.',
    imageAsset: 'images/Pantai Sanur, Bali.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKeKzPC5rC3BLc2kaahMBgrZ_pALaeWnsMIDGDbRO5eBQ51EgEokg3EbWyKXiw',
      'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRSE7u0iV768HbS1TOLIU-sIVVzEP037UUcmCwm8129nERtTxrh27CdsoRpn6jI',
      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSF0YssWb1PTC2Ac0UR1S9E8XZdYh9f3pQsT1an9evQskd4_LBj03lIZeFmSgfY',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ89N0MpMWq12k41Ho25FjWsIpmpQ1BnQ3AtaVeOtIkp1CYBbwJS8f9PZiqCc3',
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT53C62ZuAhKUo0tMI6HR-DlQdIB0AbhZdB8tDzHFULpoqMM5ADnbd8WTcYsjO4',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdNtGBtsh1bW_fRiqu5NL-i6rMkvy8RzS5o56zqjtMMTcz1ECmYIS7mB2k1CDH',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Pink Beach Komodo',
    facility : 'Gazebo, Warung Makan, Penginapan, Snorkeling, diving, dan trekking, penyewaan peralatan (snorkeling, diving) atau ATM  ',
    location: 'Desa Komodo, Kecamatan Komodo, Kabupaten Manggarai Barat, Nusa Tenggara Timur',
    description:
    'Pantai Pink Beach, atau Pantai Merah, adalah salah satu pantai terindah di Indonesia yang terletak di Pulau Komodo, Nusa Tenggara Timur. Pantai ini terkenal dengan pasirnya yang berwarna pink, air lautnya yang jernih, dan pemandangan bawah lautnya yang menakjubkan. ',
    imageAsset: 'images/Pantai Pink Beach, Pulau Komodo.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwlVRhgujSnXfCeAiWo4AlSD0HYDvjgyTpqcA1ckSYqQvfjzSiBFnOuNH3cb4d',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQktWCnQ8YVYIhOQLbJcXOv0b71KPEL5cDXDph0hzV3USpYo_Ly7hknMDMkSx2p',
      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQD2AKjJktgHASlbxgjInNjwt_YvOTO3RsMzPpOotWg0Pa9ksigEmDGjArw0z4L',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Pulau Merah',
    facility : 'Perahu sewa, Tempat tidur jemur, homestay',
    location: 'Banyuwangi, Jawa Timur',
    description:
    'Pantai Pulau Merah memiliki garis pantai yang cukup panjang, sekitar 2 km. Pantai ini memiliki pasir putih yang lembut dan air laut yang jernih. Selain itu, Pantai Pulau Merah juga memiliki pemandangan yang indah, dengan bukit-bukit hijau di sekitarnya.',
    imageAsset: 'images/Pantai Pulau Merah, Banyuwangi.jpg',
    imageUrls: [
      'https://tse1.mm.bing.net/th?id=OIP.fgcUW9oli1wC1i1_7iVrgQHaE8&pid=Api&P=0&w=300&h=300',
      'https://tse1.mm.bing.net/th?id=OIP.LCDIj6_qn99FgFbzHMHI_wHaDt&pid=Api&P=0&h=220',
    ],
    isFavorite: false,
  ),
  Pantai(
    name: 'Pantai Kelingking',
    facility : 'Gazebo, toilet umum, warung makan',
    location: 'Desa Bunga Mekar, Kecamatan Nusa Penida, Kabupaten Klungkung, Bali',
    description:
    'Pantai Kelingking adalah salah satu pantai paling ikonik di Nusa Penida. Pantai ini menawarkan keindahan alam yang menakjubkan dan berbagai aktivitas yang dapat dilakukan. Dengan perencanaan yang matang dan persiapan yang baik, Anda bisa menikmati pengalaman wisata yang tak terlupakan di pantai ini.',
    imageAsset: 'images/Pantai Kelingking, Nusa Penida.jpg',
    imageUrls: [
     'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT_UWP-7SEUBbFPNYNBjQbOtxkxNDw7U_Kr-EBprMN8fDdQ212Gl_nSm0E_ZH72',
    ],
    isFavorite: false,
  ),
];
