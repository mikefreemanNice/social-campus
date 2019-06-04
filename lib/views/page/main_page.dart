import 'package:flutter/material.dart';
import 'package:social_campus/router/application.dart';
import 'package:social_campus/views/page/campus_message.dart';

import 'common_drawer.dart';
import 'my_home.dart';

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => new MainPageState();
}

class MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  static List tabData = [
    {'text': '我的', 'icon': Icon(Icons.home)},
    {'text': '看看', 'icon': Icon(Icons.cloud_circle)}
  ];
  String appBarTitle = tabData[0]['text'];
  List<Widget> myTabs = [];

  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: tabData.length);
    for (int i = 0; i < tabData.length; i++) {
      myTabs.add(new Tab(text: tabData[i]['text'], icon: tabData[i]['icon']));
    }
    tabController.addListener(() {
      _onTabChange();
    });
    Application.tabController = tabController;
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void _onTabChange() {
    if (this.mounted) {
      this.setState(() {
        appBarTitle = tabData[tabController.index]['text'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   child: AppBar(
      //     title: Text(appBarTitle,
      //         style: TextStyle(fontSize: 16, color: Colors.white)),
      //   ),
      //   preferredSize: (MediaQuery.of(context).size) * 0.04,
      // ),
      // appBar: AppBar(
      //   title: Text(appBarTitle,
      //       style: TextStyle( color: Colors.white)),
      // ),
      drawer: CommonDrawer(),
      body: TabBarView(
          controller: tabController,
          children: <Widget>[new MyHomePage(), new CampusMessage()]),
      //悬浮按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: null,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: SafeArea(
          child: Container(
            // height: 60.0,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 3.0,
                  spreadRadius: 2.0,
                  offset: Offset(-1.0, -1.0),
                ),
              ],
            ),
            child: TabBar(
                labelStyle: TextStyle(fontSize: 12),
                controller: tabController,
                indicatorColor: Theme.of(context).primaryColor,
                indicatorWeight: 3.0,
                labelColor: Theme.of(context).primaryColor,
                unselectedLabelColor: const Color(0xFF8E8E8E),
                tabs: myTabs),
          ),
        ),
      ),
    );
  }
}
