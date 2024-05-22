import 'package:flutter/material.dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Collapse Side Baar",
        ),
      ),
      drawer: const Drawer(
        child: Column(
          mainAxisSize:MainAxisSize.max,
          children:<Widget>[
            UserAccountsDrawerHeader(accountName:Text(
                "Alice Smith"
            ), accountEmail: Text(
              "alicesmith@gmail.com",
            ),
              currentAccountPicture: CircleAvatar(
                child: Text(
                    "A"
                ),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  child: Text(
                      'A'
                  ),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            ListTile(
              leading:Icon(Icons.account_box_outlined),
              title:Text(
                  "My Account"
              ),
              enabled: true,
              selected: true,
            ),
            ListTile(
              leading:Icon(Icons.history),
              title:Text(
                  "Transaction History"
              ),
              enabled: true,
              selected: true,
            ),
            ListTile(
              leading:Icon(Icons.manage_accounts_rounded),
              title:Text(
                  "Management"
              ),
              enabled: true,
              selected: true,
            ),
            ListTile(
              leading:Icon(Icons.help),
              title:Text(
                  "Services"
              ),
              enabled: true,
              selected: true,
            ),
            ListTile(
              leading:Icon(Icons.production_quantity_limits_outlined),
              title:Text(
                  "Apply for New Products"
              ),
              enabled: true,
              selected: true,
            ),
            ListTile(
              leading:Icon(Icons.manage_accounts),
              title:Text(
                  "Complaints"
              ),
              enabled: true,
              selected: true,
            ),
            Divider(),
            ListTile(
              leading:Icon(Icons.help),
              title:Text(
                  "Information & Help"
              ),
              enabled: true,
              selected: true,
            ),
            ListTile(
              leading:Icon(Icons.request_page_outlined),
              title:Text(
                  "Requests"
              ),
              enabled: true,
              selected: true,
            ),
            ListTile(
              leading:Icon(Icons.logout),
              title:Text(
                  "Log out"
              ),
              enabled: true,
              selected: true,
            ),
            Expanded(child: Align(
              alignment: Alignment.bottomCenter,
              child:ListTile(
                leading: Icon(Icons.settings),
                title:Text(
                  "Settings",
                ),
              ),
            ),),
          ]  ,
        ),
      ),

      body: const Center(
        child: FlutterLogo(
          size:100.0,
        ),
      ),
    );
  }
}
