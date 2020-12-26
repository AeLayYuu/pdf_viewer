import 'package:dica_laws/model/endata.dart';
import 'package:dica_laws/widget/full_pdf_viewer.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import 'listviewmm.dart';

class ListViewEN extends StatefulWidget {
  final List testList;

  const ListViewEN({Key key, this.testList}) : super(key: key);
  @override
  _ListViewENState createState() => _ListViewENState();
}

EnData enData = new EnData();

class _ListViewENState extends State<ListViewEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("English", textAlign: TextAlign.left)),
        body: ListView.separated(
            separatorBuilder: (context, index) => Divider(),
            itemCount: widget.testList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  print(
                      "${widget.testList[index].id}+${widget.testList[index].name}+${widget.testList[index].pdfname}+${widget.testList[index].path}");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullPdfViewer(
                                widget.testList[index].name,
                                widget.testList[index].path,
                              )));
                  print(widget.testList[index].pdfname);
                },
                child: Card(
                  margin: const EdgeInsets.all(3.5),
                  child: Container(
                    margin: const EdgeInsets.only(left: 5, right: 5),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 12,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        child: Text(
                          "${widget.testList[index].name}",
                          style: new TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 15.0),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(''),
                decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('assets/images/img.png'),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.blue),
              ),
              ListTile(
                title: Text('Home'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => MyApp()));
                },
              ),
              ListTile(
                title: Text('Laws(English)'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ListViewEN()));
                },
              ),
              ListTile(
                title: Text('Laws(Myanmar)'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ListViewMM()));
                },
              )
            ],
          ),
        ));
  }
}
