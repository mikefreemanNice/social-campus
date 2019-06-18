import 'package:flutter/material.dart';
import 'package:social_campus/utils/uidata.dart';

class CommonDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Theme(
          data: ThemeData(
            primaryColor: Theme.of(context).primaryColor,
            fontFamily: UIData.ralewayFont),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "吴界衡",
                  style: TextStyle(color:Colors.white),
                ),
                accountEmail: Text(
                  "mike.1234@qq.com",
                  style: TextStyle(color:Colors.white),
                ),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  backgroundImage: NetworkImage(
                          "https://avatars0.githubusercontent.com/u/12619420?s=460&v=4"),
                ),
              ),
              //1
              Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      title: Text("Account"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.red,
                      ),
                      title: Text("Gmail"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.sync,
                        color: Colors.blue,
                      ),
                      title: Text("Sync Data"),
                      trailing: Icon(Icons.arrow_right),
                    )
                  ],
                ),
              ),

              //2
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Network",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.sim_card,
                        color: Colors.grey,
                      ),
                      title: Text("Simcard & Network"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.more_horiz,
                        color: Colors.grey,
                      ),
                      title: Text("More"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ),

              //3
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Sound",
                  style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.volume_up,
                        color: Colors.green,
                      ),
                      title: Text("Sound Volume"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phonelink_ring,
                        color: Colors.grey,
                      ),
                      title: Text("Ringtone"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.volume_up,
                        color: Colors.green,
                      ),
                      title: Text("Sound Volume"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phonelink_ring,
                        color: Colors.grey,
                      ),
                      title: Text("Ringtone"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.volume_up,
                        color: Colors.green,
                      ),
                      title: Text("Sound Volume"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.phonelink_ring,
                        color: Colors.grey,
                      ),
                      title: Text("Ringtone"),
                      trailing: Icon(Icons.arrow_right),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
