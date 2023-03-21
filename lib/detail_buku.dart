import 'package:flutter/material.dart';
import 'data_buku.dart';


class detail_buku extends StatelessWidget {
  final DataBuku buku;
  const detail_buku({Key? key, required this.buku}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(buku.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () async {
              //String url = buku.link;
              //var urllaunchable =  await canLaunchUrlString(url);
                    //if(urllaunchable){
                        //await launchUrlString(url);
                    //}else{
                       //print("URL can't be launched.");
                    //}
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Image.network(buku.imageLink[0]),
              ],
            ),
          ),
          Text(buku.title),
          Text(buku.author),
          //Text(buku.year),
          //Text(buku.pages),
          Text(buku.country),
          //Text(buku.isAvailable)
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueAccent,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {},
                child: const Text(
                  'Pinjam',
                  style: TextStyle(fontSize: 20),
                )),
          ))
        ],
      ),
    );
  }
}
