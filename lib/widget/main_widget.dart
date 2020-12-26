import 'dart:io';

import 'package:dica_laws/db/database_helper.dart';
import 'package:dica_laws/screen/listviewen.dart';
import 'package:dica_laws/screen/listviewmm.dart';
import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

List<Tast> testListMM = [];
List<Tast> testListEN = [];
Tast currentTast;
// TestHelper testHelper = TestHelper();
int m;
int e;

class _MainWidgetState extends State<MainWidget> {
  @override
  void initState() {
    super.initState();
    TestHelper.dbHelper.initDatabase();
  }

  final idcontroller = TextEditingController();
  final controller = TextEditingController();
  final filecontroller = TextEditingController();

  File file;
  Future<File> imageFile;
  Image image;
  List<Tast> images;
  String pdfString = '';

  List<Tast> testList = [];
  Tast currentTast;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: InkWell(
                onTap: () async {
                  List<Tast> list = await TestHelper.dbHelper.getAllTest();
                  setState(() {
                    testList = list;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListViewMM(
                                  testList: testList,
                                )));
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const ListTile(
                      title: Text('မြန်မာ'),
                      subtitle: Text(
                          'ရင်းနှီးမြှုပ်နှံမှုနှင့်ကုမ္ပဏီမှတ်ပုံတင်ခြင်းအတွက်ဥပဒေများ၊ စည်းမျဉ်းစည်းကမ်းများ'),
                    ),
                    Image.asset('assets/images/img_myanmar_flag.png'),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: new InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ListViewEN(
                                  testList: testListEN,
                                )));
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const ListTile(
                      title: Text('English'),
                      subtitle: Text(
                          'Laws, Regulations and Procedures for investment and company registration'),
                    ),
                    Image.asset('assets/images/img_english_flag.png'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
