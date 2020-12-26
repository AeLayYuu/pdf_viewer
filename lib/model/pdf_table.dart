import 'package:flutter/cupertino.dart';

class Pdf_Table {
  final String pdf_table;
  final int pdf_id;
  final String pdf_bookname;
  final String pdf_filename;
  final String pdf_keyword;
  final String path;

  Pdf_Table(
      {@required this.pdf_table,
      @required this.pdf_id,
      @required this.pdf_bookname,
      @required this.pdf_filename,
      @required this.pdf_keyword,
      @required this.path});

  factory Pdf_Table.fromJson(Map<String, dynamic> json) => Pdf_Table(
      pdf_table: json['pdf_table'],
      pdf_id: json['pdf_id'],
      pdf_bookname: json['pdf_bookname'],
      pdf_filename: json['pdf_filename'],
      pdf_keyword: json['pdf_keyword'],
      path: json['path']);
}
