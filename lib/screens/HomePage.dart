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
          resizeToAvoidBottomInset: true,
          drawer: MyDrawer(),
          appBar: AppBar(
            backgroundColor: AppColors.appBarHomeColor,
            centerTitle: true,
            title: Text(
              S.of(context).mental_health,
              style: FontsStyle.appBarStyle,
            ),
            // automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Container(
                  height: 70,
                  color: AppColors.appBarHomeColor,
                  child: TabBar(
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.white,
                      tabs: <Widget>[
                        Tab(icon: Icon(Icons.people_alt, size: 30)),
                        Tab(icon: Icon(Icons.person, size: 30)),
                        Tab(icon: Icon(Icons.article, size: 30))
                      ])),
            ),
          ),
          body: TabBarView(
            children: <Widget>[PatientsTab(), ProfileTab(), ArticleTab()],
          ),
        ));
  }
}
