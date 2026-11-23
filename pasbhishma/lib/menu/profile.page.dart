import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const String namaLengkap = "bhishma astain kaffa";
  static const String kelas = "11 PPLG 2";
  static const String noAbsen = "6";
  static const String bio =
      "siswa dengan kepintaran diluar nalar";
  static const String fotoUrl = "";

  static const Color warnaUtama = Color.fromARGB(255, 129, 129, 129);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: warnaUtama,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                child: Column(
                  children: [
                   const CircleAvatar(
                      radius: 48,
                      backgroundColor: Color(0xFFE9EDEF),
                      child: Icon(
                        Icons.person,
                        size: 52,
                        color: Color(0xFF667781),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      namaLengkap,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Mobile Developer",
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  _infoTile(Icons.person, "Nama Lengkap", namaLengkap),
                  Divider(height: 1),
                  _infoTile(Icons.class_, "Kelas", kelas),
                  Divider(height: 1),
                  _infoTile(Icons.format_list_numbered, "No. Absen", noAbsen),
                ],
              ),
            ),
            SizedBox(height: 12),

            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline, color: warnaUtama),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bio Singkat",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: warnaUtama,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(bio, style: TextStyle(height: 1.4)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoTile(IconData ikon, String label, String nilai) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.indigo.shade50,
        child: Icon(ikon, color: warnaUtama),
      ),
      title: Text(label, style: TextStyle(fontSize: 13, color: Colors.grey)),
      subtitle: Text(
        nilai,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
    );
  }
}
