import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final VoidCallback toggleTheme;

  const ProfilePage({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final pinkTheme = Theme.of(context).copyWith(
      colorScheme: const ColorScheme.light(
        primary: Colors.pink,
        secondary: Colors.pinkAccent,
      ),
      cardTheme: CardTheme(
        color: Colors.pink[50],
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );

    return Theme(
      data: pinkTheme,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Profile Photo with pink border
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.pink,
                      width: 4,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/profil.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                ),
                const SizedBox(height: 24),

                // User Data Card with pink theme
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Profil Pengguna',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(height: 16),
                        _buildProfileInfoRow(Icons.person, 'Nama: Yesi Agustin'),
                        _buildProfileInfoRow(Icons.school, 'NIM: 4522210023'),
                        _buildProfileInfoRow(Icons.email, 'Email: ysiiagstn@gmail.com'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // Theme Switch with pink accent
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.pink[50],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.brightness_6, color: Colors.pink),
                      const SizedBox(width: 8),
                      Text(
                        'Ganti Tema',
                        style: TextStyle(color: Colors.pink[800]),
                      ),
                      Switch(
                        value: isDarkMode,
                        onChanged: (bool value) {
                          toggleTheme();
                        },
                        activeColor: Colors.pink,
                        activeTrackColor: Colors.pink[200],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.pink),
          const SizedBox(width: 12),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.pink[800],
            ),
          ),
        ],
      ),
    );
  }
}
