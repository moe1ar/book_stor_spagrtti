import 'package:book_store_app/add_page/nav_containar.dart';
import 'package:book_store_app/list_page/list_book.dart';
import 'package:book_store_app/list_page/part_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(children:[Stack( children:[Column(children: [
      PArtOne(),Text("Book list",style:TextStyle(fontSize:24,fontWeight:FontWeight.bold,) ,)
      ,Container(width: 300,height:500,child:ListView(children:[ListBook()])),MyNamvBtn()
    ],
    )
    ]
    )])
    )
    ;
  }
}