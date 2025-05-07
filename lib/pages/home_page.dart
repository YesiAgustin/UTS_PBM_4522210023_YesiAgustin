import 'package:flutter/material.dart';
import '../widgets/quote_card.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> activities = [
    {'title': 'Belajar Flutter', 'date': '2025-05-06', 'icon': '💻'},
    {'title': 'Tugas Basis Data', 'date': '2025-05-07', 'icon': '🗃️'},
    {'title': 'Diskusi Kelompok', 'date': '2025-05-08', 'icon': '🤝'},
    {'title': 'Praktikum Jaringan', 'date': '2025-05-09', 'icon': '🌐'},
    {'title': 'Review Ujian', 'date': '2025-05-10', 'icon': '📚'},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFF5F7), // background pink soft
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          QuoteCard(
            quote: "Belajar bukan tentang seberapa cepat kamu paham, tapi seberapa konsisten kamu melangkah.",
            author: "Yeci",
          ),
          SizedBox(height: 24),
          Text(
            '✨ Daftar Kegiatan ✨',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.pink.shade700,
                ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: activities.length,
              itemBuilder: (context, index) {
                final activity = activities[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [Colors.pink.shade50, Colors.pink.shade100],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.pink.shade100.withOpacity(0.4),
                        blurRadius: 4,
                        offset: Offset(2, 4),
                      )
                    ],
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.pink.shade300,
                      child: Text(
                        activity['icon'] ?? '',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    title: Text(
                      activity['title'] ?? '',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Tanggal: ${activity['date']}"),
                    trailing: Icon(Icons.check_box_outline_blank),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
