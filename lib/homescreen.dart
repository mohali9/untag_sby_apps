import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './tabbar/beranda.dart' as be;
import './tabbar/ukm.dart' as ju;
import './tabbar/daftar.dart' as ne;
import './tabbar/dosen.dart' as gu;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // Controller
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Untag Surabaya"),
        actions: <Widget>[
          new IconButton(
            onPressed: () async {
              // hapus data login
              SharedPreferences preferences =
                  await SharedPreferences.getInstance();
              preferences.clear();
              Navigator.of(context).pushReplacementNamed('/Login');
              print("Keluar");
            },
            icon: Icon(Icons.exit_to_app),
          )
        ],
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.home), text: "BERANDA"),
            new Tab(icon: new Icon(Icons.camera), text: "UKM"),
            new Tab(icon: new Icon(Icons.new_releases), text: "DAFTAR"),
            new Tab(icon: new Icon(Icons.account_circle), text: "DOSEN"),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new be.Beranda(),
          new ju.Ukm(),
          new ne.Daftar(),
          new gu.Dosen(),
        ],
      ),
    );
  }
}
