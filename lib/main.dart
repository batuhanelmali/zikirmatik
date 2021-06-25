import 'package:flutter/material.dart';
import 'package:zikirmatik_app/allahinisimleri.dart';
import 'package:zikirmatik_app/hakkinda.dart';
import 'package:zikirmatik_app/islaminsartlari.dart';
import 'package:zikirmatik_app/namazlar.dart';
import 'grafik.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zikirmatik',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(
          title: "Zikirmatik ",

      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(

        backgroundColor: Colors.lightGreen,
        title: Text(widget.title),

      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[

            Center(
                child: Image.network(
                    'https://pbs.twimg.com/media/Es9RX8EW4AAowXx.jpg')),
            Text(
              'Çekilen zikir sayısı ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            MaterialButton(onPressed: (){
              setState(() {
                _counter =0;
              });
            }, child: Text('Sayaci Sifirla'),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}



class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Zikirmatik',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Allah\'in isimleri'),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => AllahinIsimleri());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Islamin Sartlari'),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => IslaminSartlari());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Namaz rekatlari'),

            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Namazlar());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Grafik Sayfasi'),

            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => LineChartSample1());
              Navigator.push(context, route);
            },
          ),

          ListTile(
            leading: Icon(Icons.input),
            title: Text('Hakkinda Sayfasi'),

            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Hakkinda());
              Navigator.push(context, route);
            },
          ),


        ],
      ),
    );
  }
}
