import 'package:flutter/material.dart';

import 'dosya.dart';

//Fonksiyon tanımlamak
void main() {
  //Fonksiyon tanımlamak
  print("ilk işlem başarili olarak çaliştirildi.");
  islem(selamlamaMetni, sayi);

  String name = "Erdal";

  bool isDebug = false;

  Widget myApp = MaterialApp(
    debugShowCheckedModeBanner: isDebug,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Image.asset(
              'varliklar/notification.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'varliklar/bag.png',
              width: 24,
              height: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Hello, $name! How are you?',
        ),
      ),
      drawer: const Drawer(),
    ),
  );

  runApp(myApp);
}

// Veri tipleri
// Değişken tanımlamak
String selamlamaMetni = 'Merhaba Arkadaşlar';

int sayi = 5;

String isim = "Erdal";
String soyisim = "Çetin";

int yas = 18;

double kilo = 69;

bool askerliYaptiMi = false;

List<int> okullaGecenYillar = [
  2012,
  2013,
  2014,
  2015,
  2016,
  2017,
  2018,
  2019,
  2020,
  2021,
  2022,
  2023
];

Ogrenci Begum = Ogrenci(
  "Begüm",
  "Yalçin",
  18,
  69,
  false,
  [2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023],
  "200418",
  "İstanbul Üniversitesi",
);

Insan Erdal = Insan("Erdal", "Çetin", 18, 69, false,
    [2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023]);

class Insan {
  String isim;
  String soyisim;

  int yas;

  double kilo;

  bool askerlikYaptiMi;

  List<int> okullaGecenYillar;

  //Oluştucu fonksiyon (constructor)
  Insan(this.isim, this.soyisim, this.yas, this.kilo, this.askerlikYaptiMi,
      this.okullaGecenYillar) {
    print("İnsan sinifi oluşturuldu.");
  }
}

class Ogrenci extends Insan {
  String okulNumara;
  String okulIsmi;

  Ogrenci(
      super.isim,
      super.soyisim,
      super.yas,
      super.kilo,
      super.askerlikYaptiMi,
      super.okullaGecenYillar,
      this.okulNumara,
      this.okulIsmi);
}
