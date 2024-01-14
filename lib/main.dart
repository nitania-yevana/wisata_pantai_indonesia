import 'package:flutter/material.dart';
import 'package:wisata_pantai_indo/data/pantai_data.dart';
import 'package:wisata_pantai_indo/data/pantai_data.dart';
import 'package:wisata_pantai_indo/screens/detail_screen.dart';
import 'package:wisata_pantai_indo/screens/favorite_screen.dart';
import 'package:wisata_pantai_indo/screens/home_screen.dart';
import 'package:wisata_pantai_indo/screens/profile_screen.dart';
import 'package:wisata_pantai_indo/screens/search_screen.dart';
import 'package:wisata_pantai_indo/screens/sign_in_screen.dart';
import 'package:wisata_pantai_indo/screens/sign_up_screen.dart';

void main() {
  runApp(const  MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Pantai Indonesia',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/home': (context) => HomeScreen(),
        '/sign_up': (context) => SignUpScreen(),
        '/sign_in': (context) => SignInScreen(),
        '/search': (context) => SearchScreen(),
        '/detail': (context) => DetailScreen(pantai: pantaiList[0]),

        // home: DetailScreen(zoo: zooList[0]),
        // home: HomeScreen(),
        // home: SearchScreen(),
        // home: ProfileScreen(),
        // home: SignInScreen(),
        // home : SignUpScreen(),
        //home: MainScreen(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class  _MainScreenState extends State<MainScreen> {
  // TODO: 1 Deklarasikan variable
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    SearchScreen(),
    FavoriteScreen(),
    ProfileScreen(),
    HomeScreen(),
    SignInScreen(),
    SignUpScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 2 Buat properti body berupa widget yang ditampilkan
      body: _children[_currentIndex],
      // TODO: 3 Buat properti BottomNavigationBar dengan nilai Theme
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.blue[50]
          ),
          // TODO: 4 Buat data dan child dari Theme

          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.blue,),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, color: Colors.blue,),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite, color: Colors.blue,),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, color: Colors.blue,),
                label: 'Profile',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.person, color: Colors.blue),
              //   label: 'Sign In',
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_add, color: Colors.blue),
                label: 'Sign in',
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            showSelectedLabels: true,
            showUnselectedLabels: true,
          )
      ),

    );
  }
}