import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  final List<Map<String, String>> scheduleData = [
    {
      'mataKuliah': 'Pemrograman Mobile',
      'hari': 'Senin',
      'jam': '08:00 - 10:00',
      'ruangan': 'A1',
      'icon': '📱',
    },
    {
      'mataKuliah': 'Basis Data Lanjut',
      'hari': 'Selasa',
      'jam': '10:15 - 12:15',
      'ruangan': 'B2',
      'icon': '🗄️',
    },
    {
      'mataKuliah': 'Interaksi Manusia dan Komputer',
      'hari': 'Rabu',
      'jam': '13:00 - 15:00',
      'ruangan': 'C3',
      'icon': '🖱️',
    },
    {
      'mataKuliah': 'Kecerdasan Buatan',
      'hari': 'Kamis',
      'jam': '09:30 - 11:30',
      'ruangan': 'D4',
      'icon': '🤖',
    },
    {
      'mataKuliah': 'Etika Profesi',
      'hari': 'Jumat',
      'jam': '07:30 - 09:30',
      'ruangan': 'E5',
      'icon': '📜',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF5F7), // Soft pink
      appBar: AppBar(
        title: const Text("📅 Jadwal Kuliah"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.pink.shade100,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowColor: MaterialStateColor.resolveWith(
                (states) => Colors.pink.shade100,
              ),
              dataRowColor: MaterialStateColor.resolveWith(
                (states) => Colors.pink.shade50,
              ),
              columnSpacing: 16, // Adjust spacing between columns
              headingTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
              dataTextStyle: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
              columns: const [
                DataColumn(label: Text('📚 Mata Kuliah')),
                DataColumn(label: Text('🗓️ Hari')),
                DataColumn(label: Text('🕗 Jam')),
                DataColumn(label: Text('🏫 Ruangan')),
              ],
              rows: scheduleData.map((jadwal) {
                return DataRow(cells: [
                  DataCell(Text('${jadwal['icon']} ${jadwal['mataKuliah']}')),
                  DataCell(Text(jadwal['hari']!)),
                  DataCell(Text(jadwal['jam']!)),
                  DataCell(Text(jadwal['ruangan']!)),
                ]);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
