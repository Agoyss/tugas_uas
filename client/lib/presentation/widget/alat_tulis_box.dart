import 'package:flutter/material.dart';

class AlatTulisBox extends StatelessWidget {
  final String AlatTulisNama;
  final String iconPath;

  const AlatTulisBox({
    super.key,
    required this.AlatTulisNama,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.symmetric(vertical: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //icon
            Image.asset(
              iconPath,
              height: 65,
            ),
            // alat tulis nama
            Row(
              children: [
                Expanded(
                    child: Center(
                  child: Text(
                    AlatTulisNama,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
