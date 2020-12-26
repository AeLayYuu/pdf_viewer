import 'dart:convert';
import 'package:dica_laws/screen/listviewmm.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpecificationProvider with ChangeNotifier {
  String url = "http://192.168.1.111/dica/getData.php";
  List<ListViewMM> list = [];
  Future<List<ListViewMM>> fetchSpecification() async {
    print("reach function");
    final response = await http.get("$url");
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print("response data $data");
      var pdfTable = data['pdf_table'];
      if (pdfTable.length > 0) {
        list = [];
        pdfTable.forEach((value) {
        });
      }
      return list;
    } else {
      throw Exception("Fail to load data");
    }
  }
}