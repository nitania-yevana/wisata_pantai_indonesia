import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isSignedIn = false;
  String fullName = '';
  String userName = '';
  int favoritePantaiCount = 0;

  void signIn() {
    setState(() {
      isSignedIn = true;
    });
  }

  void signOut() {
    setState(() {
      isSignedIn = false;
    });
  }

  void updateProfile(String newFullName, String newUserName, int newFavoritePantaiCount) {
    setState(() {
      fullName = newFullName;
      userName = newUserName;
      favoritePantaiCount = newFavoritePantaiCount;
    });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blue],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100),
                  Container(
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue, width: 3),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('images/placeholder_image.png'),
                          ),
                        ),
                        if (isSignedIn)
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.camera_alt, color: Colors.black45),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Profil',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.blue[100]),
                  buildProfileInfo('Pengguna', Icons.lock, userName, isEditable: false, iconColor: Colors.amber),
                  buildProfileInfo('Nama', Icons.person,  fullName, isEditable: isSignedIn, iconColor: Colors.blue),
                  buildProfileInfo('Favorite', Icons.favorite, '$favoritePantaiCount', iconColor: Colors.red),
                  SizedBox(height: 20),
                  buildProfileAction(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileInfo(String label, IconData icon, String value, {bool isEditable = true, Color? iconColor}) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, color: iconColor ?? Colors.black),
            SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, ),
            ),
          ],
        ),
        SizedBox(height: 4),
        Divider(color: Colors.blue),
        SizedBox(height: 4),
        Row(
          children: [
            Expanded(
              child: Text(
                ': $value',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
            if (isEditable) Icon(Icons.edit, color: Colors.grey),
          ],
        ),
        SizedBox(height: 4),
        Divider(color: Colors.blue),
        SizedBox(height: 4),
      ],
    );
  }

  Widget buildProfileAction() {
    return isSignedIn
        ? ElevatedButton(
      onPressed: signOut,
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.deepPurple,
      ),
      child: Text('Sign Out', style: TextStyle(color: Colors.blue)),
    )
        : OutlinedButton(
      onPressed: signIn,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.grey),
        primary: Colors.transparent,
      ),
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}