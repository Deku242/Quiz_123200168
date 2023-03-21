import 'package:flutter/material.dart';
import 'detail_buku.dart';
import 'data_buku.dart';
import 'list_buku.dart';

class rootPage extends StatefulWidget {
  const rootPage({Key? key}) : super(key: key);

  @override
  _rootPageState createState() => _rootPageState();
}

class _rootPageState extends State<rootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Data Buku"),
        actions: <Widget>[],
      ),
      body: ListView.builder(
        itemCount: listBuku.length,
        itemBuilder: (BuildContext context, int index) {
          final DataBuku place = listBuku[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Detail(
                    place: place,
                  );
                }));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageLink),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          place.title,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(place.author),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
