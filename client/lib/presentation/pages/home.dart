import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'add.dart';
import 'edit.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  List _get = [];

  final _lightColors = [
    Colors.lightGreen.shade300,
    Colors.lightBlue.shade300,
    Colors.amber.shade300,
    Colors.orange.shade300,
    Colors.pinkAccent.shade100,
    Colors.tealAccent.shade100
  ];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    try {
      final response =
          await http.get(Uri.parse("http://localhost/myBarang/list.php"));

      // if response successful
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        // entry data to variabel list _get
        setState(() {
          _get = data;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Barang'),
        ),
        body: FutureBuilder(
          future: _getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: _get.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Edit(
                                    id: _get[index]['id'],
                                  )));
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: _lightColors[200],
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          title: Text('${_get[index]['NamaBarang']}'),
                          subtitle: Text(
                            '${_get[index]['date']}',
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red.shade900,
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Add()));
          },
        ));
  }
}
