import 'package:flutter/material.dart';
import 'package:tugas_uas/presentation/widget/alat_tulis_box.dart';

class grid extends StatefulWidget {
  const grid({super.key});

  @override
  State<grid> createState() => _gridState();
}

class _gridState extends State<grid> {
  // padding constant

  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  // list alat tulis [icons,nama,]

  List AlatTulis = [
    ["Buku", "lib/presentation/icons/book.png"],
    ["Pulpen", "lib/presentation/icons/pen.png"],
    ["Peraut", "lib/presentation/icons/pencil-sharpener.png"],
    ["Pensil", "lib/presentation/icons/pencil.png"],
    ["Penghapus", "lib/presentation/icons/eraser.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //custom app bar
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: verticalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // logo icon
                Image.asset(
                  'lib/presentation/icons/stationery.png',
                  height: 40,
                ),
                const Text(
                  "Barang Kamarku",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          // pengenalan alat tulis
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Barang - barang",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "Kamarku",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          // pembatas
          const SizedBox(height: 20),
          // macam macam alat tulis
          Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: const Text(
                "Masukan list barangmu tidak lupa dimana barangmu berada",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding, vertical: 5),
            child: const Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
          //gridview
          Expanded(
              child: GridView.builder(
            itemCount: AlatTulis.length,
            padding: EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1 / 1.3,
            ),
            itemBuilder: (context, index) {
              return AlatTulisBox(
                AlatTulisNama: AlatTulis[index][0],
                iconPath: AlatTulis[index][1],
              );
            },
          ))
        ]),
      ),
    );
  }
}
