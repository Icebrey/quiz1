import 'package:flutter/material.dart';
import 'data_buku.dart';
import 'package:quiz1/detail_buku.dart';

class halaman_utama extends StatelessWidget {
  const halaman_utama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Buku")),
      body: ListView.builder(
        itemCount: listBuku.length,
        itemBuilder: (BuildContext context, int index) {
          DataBuku buku = listBuku[index];
          return InkWell(
            onTap: () {
              Navigator.push(context,
               MaterialPageRoute(builder: (context) => detail_buku(buku: buku)));
            },
            child: Card(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 3,
                    child: Image.network(buku.imageLink[0]),
                  ),
                  Text(buku.title),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
