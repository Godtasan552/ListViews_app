import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageList = <String>[
      "assets/images/02.png",
      "assets/images/02.png",
      "assets/images/02.png",
      "assets/images/02.png",
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My App',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1,
                  ),
                  itemCount: ImageList.length,
                  itemBuilder: (context, int index) {
                    return Card(
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      color: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          ImageList[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
                            // ...existing code...
                            const SizedBox(height: 10),
                            // เพิ่ม AppBar สำหรับ ListView
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                              margin: const EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.deepPurple.withOpacity(0.15),
                                    blurRadius: 8,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: const [
                                  Icon(Icons.list_alt, color: Colors.white, size: 26),
                                  SizedBox(width: 12),
                                  Text(
                                    "รายชื่อทั้งหมด",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      letterSpacing: 1.1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                itemCount: 100,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [Color(0xFFB388FF), Color(0xFFE1BEE7)],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(24),
                                      border: Border.all(
                                        color: Color.fromARGB(255, 161, 79, 255),
                                        width: 2,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.deepPurple.withOpacity(0.08),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                          offset: const Offset(0, 4),
                                        ),
                                      ],
                                    ),
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        backgroundColor: Colors.deepPurple[100],
                                        child: Icon(Icons.person, color: Colors.deepPurple[700]),
                                      ),
                                      title: Text(
                                        "Item #$index",
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                      subtitle: const Text(
                                        "รายละเอียดเพิ่มเติม",
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      trailing: const Icon(Icons.arrow_forward_ios,
                                          color: Colors.deepPurple, size: 18),
                                      tileColor: Colors.transparent,
                                    ),
                                  );
                                },
                              ),
                            ),
            ],
          ),
        ),
      ),
    ); // <<<<< เพิ่มวงเล็บปิดตรงนี้!
  }
}
