import 'package:dica_laws/widget/full_pdf_viewer.dart';
import 'package:flutter/material.dart';

class ListViewMM extends StatefulWidget {
  final List testList;

  const ListViewMM({Key key, this.testList}) : super(key: key);
  @override
  _ListViewMMState createState() => _ListViewMMState();
}

class _ListViewMMState extends State<ListViewMM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("မြန်မာ", textAlign: TextAlign.left)),
      body: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: widget.testList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FullPdfViewer(
                            widget.testList[index].filename,
                            widget.testList[index].path,
                          )));
              print(widget.testList[index].filename);
            },
            title: Text(widget.testList[index].bookname),
            
          );
        },
      ),
    );
  }
}
