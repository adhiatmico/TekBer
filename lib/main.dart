import 'package:flutter/material.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata',
      theme: ThemeData(fontFamily: 'Arial'),
      home: BiodataMicoPage(),
    );
  }
}

class BiodataMicoPage extends StatelessWidget {
  String nama = "Arumi Adhiatmico";
  String nrp = "5026221007";
  String funfact = "Gabisa ngontrol suara";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata Mico', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/fotosaya.jpg'),
            ),
            SizedBox(height: 20),
            Text("Nama: $nama"),
            SizedBox(height: 10),
            Text("NRP: $nrp"),
            SizedBox(height: 10),
            Text("Fun Fact: $funfact"),
          ],
        ),
      ),
   );
  }
}