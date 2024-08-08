import 'package:flutter/material.dart';
import 'package:myapp/pages/kategori_page.dart';
import '../services/auth_service.dart';
import 'auth/login.dart';
//import 'kategori/list_page.dart';

class HomePage extends StatelessWidget {
  final AuthService _authService = AuthService();

  void _logout(BuildContext context) async {
    await _authService.logout();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
          'Welcome to the Home Page!',
          style: TextStyle(fontSize: 24),
         ),
         SizedBox(height: 20),
         ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => KategoriPage()),
            );
          },
          child: Text('Kategori'),
        )
        ],
      ),
      ),
    );
  }
}