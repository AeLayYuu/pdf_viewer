import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Laws>> getLawData() async {
    try {
      // var url = await dio.get("http://192.168.1.103/dica/checkdata.php");
      // var url = await http
      //     .post("http://unityitsolutionprovider.com/sead_web/getBookData.php");
      var url = await http.get("http://192.168.1.105/dica/conn.php");
      print("url.body>>>>>>>>>>>>>>>>>>>$url");
      var data = jsonDecode(url.body);

      List<Laws> dataList = [];
      for (var d in data) {
        Laws laws = Laws(
          id: d['BookID'],
          bookName: d['BookName'],
          fileName: d['FileName'],
          bookType: d['BookType'],
        );
        dataList.add(laws);
      }
      return dataList;
    } catch (e) {
      print(e);
    }
  }

  Future<http.Response> insertMethod() async {
    var response =
        await http.post("http://192.168.1.105/dica/checkData.php", body: {
      "BOOKID": "10",
      "BookName": "Ten Book",
      "FileName": "xxx-man",
      "BookType": "e",
    });
    var body = jsonDecode(response.body);
    print(body);
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            insertMethod();
          },
          child: Icon(Icons.add),
        ),
        body: Center(
          child: FutureBuilder(
              future: getLawData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(snapshot.data[index].bookName),
                        subtitle: Text(snapshot.data[index].fileName),
                      );
                    },
                  );
                }
              }),
        ));
  }
}
class AddScreen extends StatefulWidget {
  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
decoration: InputDecoration(  
  hintText: "",
),
        ),
      ],),
      
    );
  }
}