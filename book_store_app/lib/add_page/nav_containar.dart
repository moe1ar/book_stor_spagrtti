import 'package:book_store_app/add_page/page_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyNamvBtn extends StatefulWidget {
  const MyNamvBtn({super.key});
  static  int current=0; 

  @override
  State<MyNamvBtn> createState() => _MyNamvBtnState();
}

class _MyNamvBtnState extends State<MyNamvBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding:EdgeInsets.only(top:480),child:Container(width: 200,height: 85,
    decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.white
   , boxShadow: [
    BoxShadow(
      color: Colors.grey.shade600,
      spreadRadius: 1,
      blurRadius: 5,
      offset: const Offset(0, 5),
    ),
    BoxShadow(
      color: Colors.grey.shade300,
      offset: const Offset(-5,0),
    )
  ]),
  child:Row(children: [
    TextButton(onPressed: ()=>null, child:Icon(Icons.home_outlined,size: 30,color:Colors.black,)),
    TextButton(onPressed: (){MyNamvBtn.current=1;
    setState(() {});}
    , child:Icon(Icons.shopping_cart_sharp,size: 30,color:MyNamvBtn.current==1?Colors.amber:Colors.black,)),
    TextButton(onPressed:() {
      MyNamvBtn.current=1;
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  PageThree()),
    
  );setState(() {});
}, child:Icon(Icons.add,size: 30,color:MyNamvBtn.current==1?Colors.amber:Colors.black,)),
  ]),)
  );
  }
}

