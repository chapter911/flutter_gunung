import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final List<String> _detail = [
    "Gunung ini menjadi gunung tertinggi nomor satu di Indonesia. Puncak Jaya Wijaya memiliki ketinggian mencapai 4.884 meter. Dengan ketinggian ini, gunung Puncak Jaya Wijaya masuk dalam deretan salah satu gunung tertinggi di dunia. Gunung yang terletak di Provinsi Papua ini juga dikenal dengan sebutan Carstensz Pyramid. Gunung ini terletak pada titik koordinat S 04°04.733 dan E 137°09.572. Gunung Puncak Jaya Wijaya juga merupakan gunung kapur terbesar di Indonesia. Saking tingginya, di puncak gunung ini terdapat salju abadi",
    "Gunung tertinggi di Indonesia selanjutnya ditempati oleh Gunung Kerinci. Gunung ini juga merupakan gunung tertinggi di Pulau Sumatra dan gunung berapi tertinggi di Indonesia. Gunung yang terletak di perbatasan Kerinci, Provinsi Jambi, dengan Provinsi Sumatra Barat di kabupaten Solok Selatan, di Pegunungan Bukit Barisan ini memiliki ketinggian 3.805 mdpl",
    "Gunung Rinjani terletak di Lombok, Nusa Tenggara Barat. Gunung ini memiliki ketinggian mencapai 3.762 meter. Rinjani menjadi salah satu gunung tertinggi yang populer dan banyak mengundang pendaki. Gunung Rinjani menyajikan pemandangan yang indah karena terdapat padang rumput yang luas dan hutan tropis. Gunung ini juga merupakan bagian dari Taman Nasional Gunung Rinjani yang memiliki luas sekitar 41.330 ha.",
    "Gunung Semeru memiliki ketinggian mencapai 3.676 meter dengan bagian puncak tertingginya yang dikenal dengan sebutan Mahameru. Gunung ini merupakan salah satu gunung tertinggi di Pulau Jawa. Gunung Semeru secara administratif termasuk dalam wilayah dua kabupaten, yakni Kabupaten Malang dan Kabupaten Lumajang, Provinsi Jawa Timur. Gunung ini termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru",
    "Gunung Sanggar juga termasuk dalam salah satu daftar gunung tertinggi di Indonesia. Meskipun tidak sepopuler gunung lainnya, Gunung Sanggar memiliki ketinggian mencapai 3.564 meter. Gunung yang berlokasi di Nusa Tenggara Barat ini ditetapkan menjadi gunung tertinggi ke-5 di Indonesia.",
    "Gunung Latimojong dikenal juga dengan sebutan Bulu Rantemario. Gunung yang terletak di Kabupaten Enrekang, Sulawesi Selatan ini memiliki ketinggian 3.478 meter. Gunung Latimojong berada di tengah-tengah Sulawesi Selatan. Dari pusat kota Makassar, pendaki harus memakan waktu hingga 10 jam untuk mencapai kaki gunung.",
    "Terletak di Jawa Tengah, gunung ini memiliki ketinggian mencapai 3.428 meter. Gunung Slamet sendiri terletak di antara 5 kabupaten, yaitu Kabupaten Banyumas, Kabupaten Purbalingga, Kabupaten Brebes, Kabupaten Tegal dan Kabupaten Pemalang. Gunung Slamet merupakan gunung tertinggi di Jawa Tengah dan sekaligus gunung tertinggi kedua di pulau Jawa, setelah Gunung Semeru. Gunung ini menjadi salah satu gunung yang masih aktif, bahkan tercatat gunung ini telah meletus sebanyak 42 kali.",
    "Gunung Sumbing menempati urutan ke-8 sebagai gunung tertinggi di Indonesia. Gunung ini memiliki ketinggian mencapai 3.371 meter. Gunung ini secara administratif terletak di tiga wilayah kabupaten, yaitu Kabupaten Magelang, Kabupaten Temanggung dan Kabupaten Wonosobo. Untuk para pendaki yang tertarik melakukan pendakian ke Gunung Sumbing, terdapat tiga jalur pendakian, yakni jalur Cepit parakan, jalur Bogowongso, dan jalur Desa Garung.",
    "Gunung Raung terletak di ujung timur Pulau Jawa. Secara administratif, kawasan gunung ini termasuk dalam wilayah tiga kabupaten di wilayah Besuki, Jawa Timur, yaitu Banyuwangi, Bondowoso, dan Jember Gunung Raung memiliki ketinggian mencapai 3.344 meter. Jika dihitung dari titik tertinggi, Gunung Raung merupakan gunung tertinggi ketiga di Jawa Timur setelah Gunung Semeru dan Gunung Arjuno, serta menjadi yang tertinggi keempat di Pulau Jawa.",
    "Gunung Ceremai atau kerap juga disebut Gunung Cereme merupakan gunung tertinggi di Jawa Barat. Gunung ini terletak di dua kabupaten yakni Kabupaten Kuningan dan Kabupaten Majalengka. Gunung ini memiliki ketinggian 3.078 meter. Saat ini Gunung Ceremai termasuk ke dalam kawasan Taman Nasional Gunung Ceremai (TNGC), yang memiliki luas total sekitar 15.000 hektare."
  ];
  String _judul = "", _gambar = "", _isi = "";

  @override
  void initState() {
    super.initState();
    setState(() {
      _judul = Get.arguments[1];
      _gambar = "${Get.arguments[0] + 1}.jpg";
      _isi = _detail[Get.arguments[0]];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text("Gunung $_judul"),
        actions: [
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "PENGEMBANG APLIKASI",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                titlePadding: EdgeInsets.zero,
                content: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "LA SAFRIL",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "1102190006",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _gambar == ""
                  ? Container()
                  : Card(
                      elevation: 15,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset('assets/$_gambar')),
                    ),
              const SizedBox(
                height: 10,
              ),
              Text(
                _isi,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
