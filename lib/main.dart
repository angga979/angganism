import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home_page.dart';
import 'screens/poems_page.dart';
import 'screens/ai_writer_page.dart';
import 'screens/about_page.dart';

void main() {
  runApp(const AngganismApp());
}

class AngganismApp extends StatelessWidget {
  const AngganismApp({super.key});

  @override
  Widget build(BuildContext context) {
    const bg = Color(0xFF0D0B0A);
    const surface = Color(0xFF171311);
    const accent = Color(0xFFC49A6C);
    const cream = Color(0xFFE9DED0);

    final textTheme = GoogleFonts.cormorantGaramondTextTheme(
      ThemeData.dark().textTheme,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Angganism',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: bg,
        colorScheme: const ColorScheme.dark(
          surface: surface,
          primary: accent,
          secondary: cream,
        ),
        textTheme: textTheme,
        appBarTheme: const AppBarTheme(
          backgroundColor: bg,
          elevation: 0,
          centerTitle: false,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: surface,
          indicatorColor: accent.withOpacity(.16),
          labelTextStyle: MaterialStatePropertyAll(
            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      home: const MainShell(),
    );
  }
}

class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int index = 0;

  final pages = const [
    HomePage(),
    PoemsPage(),
    AiWriterPage(),
    AboutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: index, children: pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: (value) => setState(() => index = value),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book_outlined),
            selectedIcon: Icon(Icons.menu_book_rounded),
            label: 'Puisi',
          ),
          NavigationDestination(
            icon: Icon(Icons.auto_awesome_outlined),
            selectedIcon: Icon(Icons.auto_awesome),
            label: 'AI Writer',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline_rounded),
            selectedIcon: Icon(Icons.person_rounded),
            label: 'Tentang',
          ),
        ],
      ),
    );
  }
}
