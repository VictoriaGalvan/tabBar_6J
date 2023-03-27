import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pestaña Tab',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
} //mi aplicacion

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} //MyHomePage StatefulWidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Color(0xff14387c)),
            tabs: [
              Tab(icon: Icon(Icons.account_box)),
              Tab(icon: Icon(Icons.notification_important_rounded)),
              Tab(icon: Icon(Icons.card_giftcard)),
              Tab(icon: Icon(Icons.account_tree_outlined)),
            ],
          ),
          title: Text('Tabs Demo'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.account_box, size: 350),
            Icon(Icons.notification_important_rounded, size: 350),
            Icon(Icons.card_giftcard, size: 350),
            Icon(Icons.account_tree_outlined, size: 350),
          ],
        ),
      ),
    );
  }
} //_MyHomePageState StatefulWidget
