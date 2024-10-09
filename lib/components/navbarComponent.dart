import 'package:flutter/material.dart';
import 'package:rekanpabrik/pages/page.dart';
import 'package:rekanpabrik/shared/shared.dart';

class navbarComponent extends StatefulWidget {
  @override
  _navbarComponentState createState() => _navbarComponentState();
}

class _navbarComponentState extends State<navbarComponent> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    home_pelamar(),
    Caripekerjaan(),
    savedJobs(),
    profilePelamar(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          _buildPage(_selectedIndex), // Ini adalah halaman utama
          Positioned(
            left: 20.0,
            right: 20.0,
            bottom: 20.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 90,
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 3,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: BottomNavigationBar(
                  backgroundColor: secondaryCoolor,
                  items: <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: _buildIcon(Icons.home, 0),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: _buildIcon(Icons.search, 1),
                      label: 'Find Job',
                    ),
                    BottomNavigationBarItem(
                      icon: _buildIcon(Icons.bookmark, 2),
                      label: 'Saved Jobs',
                    ),
                    BottomNavigationBarItem(
                      icon: _buildIcon(Icons.person, 3),
                      label: 'Profile',
                    ),
                  ],
                  currentIndex: _selectedIndex,
                  selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.white,
                  onTap: _onItemTapped,
                  elevation: 0, // Menghilangkan shadow bawaan
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

// Membuat efek latar belakang lingkaran hijau saat ikon dipilih
  Widget _buildIcon(IconData iconData, int index) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _selectedIndex == index
            ? secondaryCoolor
            : Colors.transparent, // Warna hijau saat dipilih
      ),
      padding: EdgeInsets.all(8.0), // Membuat lingkaran lebih besar
      child: Icon(
        iconData,
        size: 30,
        color: Colors.white,
      ),
    );
  }

  Widget _buildPage(int index) {
    return _pages[index]; // Akses halaman sesuai dengan indeks yang benar
  }
}
