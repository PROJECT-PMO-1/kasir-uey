import 'package:flutter/material.dart';

//Function tanpa parameter
void infoMahasiswa() {
  print("NIM : 21SA1255");
  print("Nama : Afif Waliyudin");
  print("Email : 21sa1255@mhs.amikompurwokerto.ac.id");
  print("");
}

//function dengan parameter
void infoMahasiswa1(String nim, nama, email) {
  print("NIM : $nim");
  print("Nama : $nama");
  print("Email : $email");
  print("");
}

//function parameter opsional
void infoMahasiswa2(String nim, String nama, [String? email]) {
  print("NIM : $nim");
  print("Nama : $nama");
  print("Emailkuuuucuk : $email");
  print("");
}

//function named parameter
void infoMahasiswa3({String? nim, String? nama, String? email}) {
  print("NIM : $nim");
  print("Nama : $nama");
  print("Email : $email");
  print("");
}

//function required parameter
void infoMahasiswa4(
    {required String? nim, required String? nama, String? email}) {
  print("NIM : $nim");
  print("Nama : $nama");
  print("Email : $email");
  print("");
}

//function mengembalikan nilai
double tambah(double bil1, double bil2) {
  return bil1 + bil2;
}

//function mengembalikan nilai kalkulator dasar
double kalkulatorDasar(double bil1, double bil2, String jenisOperasi) {
  double hasil = 0;
  if (jenisOperasi == "+") {
    hasil = bil1 + bil2;
  } else if (jenisOperasi == "-") {
    hasil = bil1 - bil2;
  } else if (jenisOperasi == "*") {
    hasil = bil1 * bil2;
  } else if (jenisOperasi == "/") {
    hasil = bil1 / bil2;
  } else {
    print("Tidak ada hasil");
  }
  return hasil;
}

//function mengembalikan bilangan terkecil
double terkecil(double bil1, double bil2) => bil1 < bil2 ? bil1 : bil2;

void main(List<String> args) {
  print("- Function Tanpa Parameter -");
  infoMahasiswa();
  print("- Function Dengan Parameter -");
  infoMahasiswa1("21SA1255", "Afif Waliyudin", "afifrider507@gmaiil.com");
  print("- Function Parameter Opsional-");
  infoMahasiswa2("21SA1255", "Afif Waliyudin");

  infoMahasiswa2("21SA1255", "Afif Waliyudin", "afifrider507@gmail.com");
  print("- Function dengan named Parameter -");
  infoMahasiswa3(nim: "21SA1255");
  infoMahasiswa3(nim: "21SA1255", nama: "Afif Waliyudin");
  infoMahasiswa3(
      nim: "21SA1255", nama: "Afif Waliyudin", email: "afifrider507@gmail.com");
  print("- Function Required Parameter -");
  infoMahasiswa4(nim: "21SA1255", nama: "Afif Waliyudin");
  infoMahasiswa4(
      nim: "21SA1255", nama: "Afif Waliyudin", email: "afifrider507@gmail.com");
  print("- Function Mengembalikan Nilai -");
  print(tambah(100, 100));
  print(kalkulatorDasar(10, 2, "+"));
  print(kalkulatorDasar(10, 2, "-"));
  print(kalkulatorDasar(10, 2, "*"));
  print(kalkulatorDasar(10, 2, "/"));
  print(kalkulatorDasar(10, 2, "?"));
  print(terkecil(4, 2));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Belajar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Belajar extends StatefulWidget {
  const Belajar({super.key});

  @override
  State<Belajar> createState() => _Belajar();
}

class _Belajar extends State<Belajar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kocak"),
      ),
      body: Center(
        child: Text("Lah"),
      ),
    );
  }
}
