import 'dart:html';

import 'package:flutter/material.dart';
import 'data_buku.dart';
import 'main.dart';
import 'list_buku.dart';

class Detail extends StatelessWidget {
  final DataBuku place;
  const Detail({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(place.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async {
              // await goToWebPage(place.link);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Image.asset(place.imageLink),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text("", textAlign: TextAlign.start),
              ),
              Container(
                child: Text("Judul         :" + place.title,
                    textAlign: TextAlign.start),
              ),
              Container(
                child: Text("Penulis       :" + place.author,
                    textAlign: TextAlign.start),
              ),
              Container(
                child: Text("Bahasa        :" + place.language,
                    textAlign: TextAlign.start),
              ),
              Container(
                child: Text("Negara        :" + place.country,
                    textAlign: TextAlign.start),
              ),
              Container(
                child: Text("Jumlah halaman:" + '${place.pages}',
                    textAlign: TextAlign.start),
              ),
              Container(
                child: Text("Tahun Terbit  :" + '${place.year}',
                    textAlign: TextAlign.start),
              ),
              Container(
                child: Text("Status        :" + '${place.isAvailable}',
                    textAlign: TextAlign.start),
              ),
              Container(
                child: Text("", textAlign: TextAlign.start),
              ),
              Container(
                child: Text("", textAlign: TextAlign.start),
              ),
              FlatButton(
                splashColor: Colors.red,
                color: Colors.green,
                textColor: Colors.white,
                child: Text(
                  'Pinjam Buku',
                ),
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('Berhasil Meminjam Buku'),
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(
                      label: '',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );
                  Scaffold.of(context).showSnackBar(snackBar);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
