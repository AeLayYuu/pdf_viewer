import 'package:dica_laws/db/database_helper.dart';
import 'package:dica_laws/login/login.dart';
import 'package:dica_laws/main.dart';
import 'package:dica_laws/screen/addscreen.dart';
import 'package:dica_laws/screen/listviewen.dart';
import 'package:dica_laws/screen/listviewmm.dart';
import 'package:dica_laws/widget/main_widget.dart';
import 'package:flutter/material.dart';
import 'package:animated_float_action_button/animated_floating_action_button.dart';

class MaingScreen extends StatefulWidget {
  final String title;
  final GlobalKey<AnimatedFloatingActionButtonState> fabKey = GlobalKey();

  MaingScreen({Key key, this.title}) : super(key: key);
  @override
  _MaingScreenState createState() => _MaingScreenState();
}

List<Tast> testListMM = [];
List<Tast> testListEN = [];
Tast currentTast;
// final TestHelper testHelper = TestHelper();




class _MaingScreenState extends State<MaingScreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DICA LAWS", textAlign: TextAlign.center),
        ),
        body: MainWidget(),
        floatingActionButton: SizedBox(
          width: 56,
          height: 56,
          child: new FloatingActionButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AddScreen()));
            },
            child: Icon(
              Icons.add,
            ),
            mini: true,
          ),
        ),
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
                title: Text('Login'),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListViewEN()));
                  }),
              ListTile(
                title: Text('Laws(Myanmar)'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListViewMM(
                                testList: testListMM,
                              )));
                },
              )
            ],
          ),
        ));
  }
}
