import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => new MyHomePageState();
}

class MyHomePageState extends State<MyHomePage>
    with AutomaticKeepAliveClientMixin {
  Size deviceSize;
  @override
  bool get wantKeepAlive => true;

  final List<String> sliderItems = [
    "assets/food/breakfast.jpg",
    "assets/food/burger1.jpg",
    "assets/food/meal.jpg",
    "assets/food/pancake.jpg",
  ];

  ///个人信息
  SliverList selfInfoList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  height: 150.0,
                  width: double.infinity,
                  child:
                      Image.asset(sliderItems[index % 4], fit: BoxFit.cover)),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Nepali breakfast",
                            style: Theme.of(context)
                                .textTheme
                                .title
                                .merge(TextStyle(fontSize: 14.0))),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text("Vegetarian, Nepali",
                            style: Theme.of(context)
                                .textTheme
                                .subhead
                                .merge(TextStyle(fontSize: 12.0))),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                  Text("Rs. 180",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .merge(TextStyle(fontSize: 16.0, color: Colors.red))),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        );
      }, childCount: sliderItems.length * 10),
    );
  }

  ///头像
  Widget profileHeader(BuildContext context) => Container(
        // height: 230,
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                padding: EdgeInsets.only(
                    top: 40.0, left: 40.0, right: 40.0, bottom: 10.0),
                child: Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 5.0,
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      Text(
                        "吴界衡",
                        style: Theme.of(context).textTheme.title,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("青岛大学 | 计算机科学与技术"),
                      SizedBox(
                        height: 2.0,
                      ),
                      Container(
                        height: 80.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  "302",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text("Posts".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12.0)),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  "10.3K",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text("Followers".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12.0)),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  "120",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text("Following".toUpperCase(),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 12.0)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Material(
                    elevation: 5.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          "https://avatars0.githubusercontent.com/u/12619420?s=460&v=4"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: false,
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              floating: true,
              backgroundColor: Colors.transparent,
              flexibleSpace: profileHeader(context),
              expandedHeight: 230.0,
            ),
            selfInfoList(),
          ],
        ),
      ),
    );
  }
}
