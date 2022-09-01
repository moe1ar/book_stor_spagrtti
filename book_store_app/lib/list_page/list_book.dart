import 'package:book_store_app/add_page/contents.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListBook extends StatefulWidget {
  const ListBook({super.key});

  @override
  State<ListBook> createState() => _ListBookState();
}

class _ListBookState extends State<ListBook> {
  @override
  Widget build(BuildContext context) {
    return Column(children:MyList.mylist.map((e) => Column(children: [
    Text(e.Autor_NAme,style:TextStyle(fontSize: 20,color: Color(0xff))),
    Text(e.Book_Name,style:TextStyle(fontSize: 20,color: Color(0xff))),
    Text(e.Prrice_Book,style:TextStyle(fontSize: 20,color: Color(0xff)))
    ,Text(e.DisCripTion,style:TextStyle(fontSize: 20,color: Color(0xff)))
    ,Text(e.Link,style:TextStyle(fontSize: 20,color: Color(0xff)))],)).toList()
    );
  }
}