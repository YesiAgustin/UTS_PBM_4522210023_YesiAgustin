import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/schedule_page.dart';
import 'pages/profile_page.dart';
import 'themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          (_themeMode == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PBMYECI',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeMode,
      home: AdaptiveScaffoldPage(toggleTheme: _toggleTheme),
    );
  }
}

class AdaptiveScaffoldPage extends StatefulWidget {
  final VoidCallback toggleTheme;

  AdaptiveScaffoldPage({required this.toggleTheme});

  @override
  _AdaptiveScaffoldPageState createState() => _AdaptiveScaffoldPageState();
}

class _AdaptiveScaffoldPageState extends State<AdaptiveScaffoldPage> {
  int _selectedIndex = 0;
  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(),
      SchedulePage(),
      ProfilePage(toggleTheme: widget.toggleTheme),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('AYO SEMANGAT BELAJAR')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), label: 'Jadwal'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Akun'),
        ],
      ),
    );
  }
}
