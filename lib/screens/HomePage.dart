import '../generated/l10n.dart';
import '../utils/AppColors.dart';
import '../utils/FontsStyle.dart';
import '../weidgets/MyDrawer.dart';
import '../screens/ArticleTab.dart';
import '../screens/PatientsTab.dart';
import '../screens/ProfileTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const id = "home";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: new Scaffold(
          drawer: MyDrawer(),
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            centerTitle: true,
            title: Text(
              S.of(context).mental_health,
              style: FontsStyle.appBarStyle,
            ),
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Container(
                  height: 70,
                  color: Colors.blue[100],
                  child: TabBar(
                      labelColor: Colors.grey[400],
                      unselectedLabelColor: Colors.grey[900],
                      labelStyle: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w800),
                      indicatorColor: Colors.white,
                      tabs: <Widget>[
                        Tab(icon: Icon(Icons.people_alt)),
                        Tab(icon: Icon(Icons.person)),
                        Tab(icon: Icon(Icons.article))
                      ])),
            ),
          ),
          body: TabBarView(
            children: <Widget>[PatientsTab(), ProfileTab(), ArticleTab()],
          ),
        ));
  }
}
