import 'package:flutter/material.dart';


class Namazlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Sabah namazı;  iki rekatı sünnet ve iki rekatı farz olmak üzere toplam dört rekattır.', style:TextStyle(color:Colors.green)),
              Text(' Öğle namazı; dört rekatı ilk sünnet, dört rekatı farz ve iki rekatı son sünnet olmak üzere toplam on rekattır', style:TextStyle(color:Colors.blue)),

              Text(' İkindi namazı; dört rekat sünnet ve dört rekat farz olmak üzere toplam sekiz rekattır. ', style:TextStyle(color:Colors.deepOrange)),
              Text('Akşam namazı; üç rekatı farz, iki rekatı sünnet olmak üzere toplam beş rekattır. (Akşam namazının diğer vakit namazlardan farklı olarak ilk farzı kılınır)', style:TextStyle(color:Colors.purple)),
              Text(' Yatsı namazı; dört rekatı ilk sünnet, dört rekatı farz, iki rekat son sünnet ve 3 rekat vitir olmak üzere toplam on üç rekattır.', style:TextStyle(color:Colors.red)),
        ],
      ),
    );
  }
}
