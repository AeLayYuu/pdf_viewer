import 'dart:io';
import 'package:dica_laws/db/database_helper.dart';
import 'package:dica_laws/screen/listviewmm.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => new _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final idcontroller = TextEditingController();
  final controller = TextEditingController();
  final filecontroller = TextEditingController();

  File file;
  Future<File> imageFile;
  Image image;
  List<Tast> images;
  String pdfString = '';

  List<Tast> testList = [];
  // Tast currentTast;
  // TestHelper _testHelper = TestHelper();

  @override
  void initState() {
    super.initState();
    TestHelper.dbHelper.initDatabase();
    // _testHelper = TestHelper();
  }

  _getfile(BuildContext context) async {
    try {
      File pickedFile = await FilePicker.getFile(
        allowedExtensions: ['pdf'],
        type: FileType.custom,
      );
      if (pickedFile != null) {
        setState(() {
          file = pickedFile;
          pdfString = file.path;
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
        title: Text("Add Document"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: idcontroller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(
                  controller: controller,
                ),
              ),
              RaisedButton(
                onPressed: () {
                  testList == null
                      ? Fluttertoast.showToast(
                          msg: "Error Occur",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 3,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0)
                      : print("id ${idcontroller.text}");
                  print("name ${controller.text}");
                  print("url $pdfString");

                  Tast currentTast = Tast(
                      id: int.parse(idcontroller.text),
                      bookname: controller.text,
                      filename: "",
                      pdfkeyword: "",
                      path: pdfString);
                  TestHelper.dbHelper.insertTest(currentTast);
                  // _testHelper.insertTest(currentTast);
                  Fluttertoast.showToast(
                      msg: "Success",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 3,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                      
                },
                child: Text("Add"),
              ),
              SizedBox(height: 10),
              RaisedButton(
                onPressed: () async {
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
                child: Text("get All Data"),
              ),
              RaisedButton(
                onPressed: () {
                  _getfile(context);
                },
                child: Text("select file"),
              ),
              file != null
                  ? Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: (Text(pdfString
                          .trim()
                          .split('/file_picker/')
                          .last
                          .replaceAll("/", "")
                          .trim())),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text('please select file'),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
