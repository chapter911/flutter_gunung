import 'package:flutter/material.dart';
import 'package:flutter_daftar_gunung/detail.dart';
import 'package:get/get.dart';

class Daftar extends StatefulWidget {
  const Daftar({super.key});

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  final List<String> _gunung = [
    "Jaya Wijaya",
    "Kerinci",
    "Rinjani",
    "Semeru",
    "Sanggar",
    "Latimojong",
    "Slamet",
    "Sumbing",
    "Raung",
    "Cermai"
  ];

  final List<Widget> _list = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < _gunung.length; i++) {
      _list.add(Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: InkWell(
          onTap: () {
            Get.to(() => const Detail(), arguments: [i, _gunung[i]]);
          },
          child: Card(
            elevation: 15,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Image.asset(
                      'assets/mountain.png',
                      scale: 10,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    flex: 3,
                    child: Text(
                      _gunung[i],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: const Text("Daftar Gunung Indonesia"),
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
              children: _list,
            ),
          )),
    );
  }
}
