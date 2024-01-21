import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List<Map<String, dynamic>> data = [
    {
      'title': 'Favorite',
      'icon': Icons.favorite,
    },
    {
      'title': 'Home',
      'icon': Icons.home,
    },
    {
      'title': 'Person',
      'icon': Icons.person,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
    {
      'title': 'Key',
      'icon': Icons.key,
    },
  ];

  // ภาษา Dart จะทำการ infer type ให้เรา (type inference)
  var numbers = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    // Random r = Random();
    // var index = r.nextInt(data.length);
    // var title = data[index]['title'];
    // var icon = data[index]['icon'];

    return Scaffold(
      body: Container(
        color: Colors.pink,
        child: Center(
          child: ListView.builder(
            // Named constructor
            itemCount: data.length,
            itemBuilder: buildItem,
          ),
          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Icon(icon, size: 50, color: Colors.white),
          //     SizedBox(height: 10.0,),
          //     Text(title, style: TextStyle(color: Colors.white)),
          //   ],
          // ),
        ),
      ),
    );
  }

  Widget? buildItem(BuildContext context, int index) {
    var title = data[index]['title'];
    var icon = data[index]['icon'];
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4 , horizontal: 8), //ซ้ายขวาเท่ากันเเละบนล่างเท่ากันเเต่ 1 เเละ 2 ม่เท่ากัน
    //margin: EdgeInsets.only(top: ?, left : ? , right: ? ,bottom: ?) only is กำหนดเองได้หมดเลย4ด้าน
      padding: EdgeInsets.all(8.0), // all is เท่ากันหมด ซ้ายขวา หรือ บนล่าง
      decoration: BoxDecoration(
        color: Colors.yellow,
        border: Border.all(width: 1.0, color: Colors.white),
        borderRadius: BorderRadius.circular(8.0),
        // boxShadow: [
        //   BoxShadow(
        //     offset: Offset(0, 0),
        //     color: Colors.grey,
        //     spreadRadius: 4.0,
        //     blurRadius: 4.0,
        //   ),
        // ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisAlignment: MainAxisAlignment.end, // จะเรียงจากขวาไปซ้าย
        children: [
          Container(
            //margin: EdgeInsets.only(right: 8.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2.0, color: Color.fromARGB(255, 255, 1, 1)),
              //borderRadius: BorderRadius.circular(8.0),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.blue),
          ),
          SizedBox(width: 10.0,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Roasted chickpea'),
              Text('\$12.99'),
            
            ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.center,
                width: 24, 
                height: 24, 
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,),
                child: Text('+')),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text('2'),
              ),
              Container(
                alignment: Alignment.center,
                width: 24,
                height: 24,
                decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,),
                child: Text('-')),
            ],
          )
          //Expanded(flex: 1, child: Text(title)), //ความกว้างครึ่งหนึ่ง flex ใช้ในกรฯณีที่เราอยากเเบ่งเป็นส่วนๆ
          //Expanded(flex: 2 ,child: Text("Flutter")),
          
         
          
        ],
      ),
    );
  }
}
