import 'package:book_store_app/list_page/page_one.dart';
import 'package:book_store_app/view_page/page_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContentView extends StatelessWidget {
  const ContentView({super.key});

  @override
  
  Widget build(BuildContext context) {
    var size,width,hieght;
    size = MediaQuery.of(context).size;
    hieght=size.height;
    width=size.width;

    return SafeArea(child: Scaffold(body: 
    Stack(children: [
      Container(width:width,height:hieght,color:Colors.white ,),
      Padding(padding:EdgeInsets.only(left:30,top: 20,),child:Image(image: AssetImage('images/ggt.jpg'),width:300,height:350,))
     ,TextButton(onPressed: (){Navigator.push(
    context,MaterialPageRoute(builder: (context) =>  PageOne()));},
    child:Icon(Icons.arrow_back_ios_new,size: 30,color:Colors.black,)),
      Positioned(top: 390,left:20,right: 20,child:Container(height: hieght/4,width:width/1.3,color: Colors.white,
      
    child:Column(children: [
      Text(" Game of Throns ",style: TextStyle(fontSize:30,color:Colors.black),)
      ,Text(" George R.R Martin ",style: TextStyle(fontSize:17,color:Color.fromARGB(255, 160, 156, 156)),)
      ,SingleChildScrollView(child:Padding(padding:EdgeInsets.symmetric(horizontal: 10,vertical:20),child:Text("زربة"
      ,style:TextStyle(fontSize:16,color:Color.fromARGB(255, 149, 147, 147)) ,),))
      ])
      )
    ,)
    ,Positioned(top: 560,left:20,right:20,child:Container(decoration:BoxDecoration(color:Colors.white,
    borderRadius:BorderRadius.circular(15),boxShadow: [
  BoxShadow(
    color: Colors.grey.shade600,
    spreadRadius: 1,
    blurRadius: 15,
    offset: const Offset(0, 15)
  )
]),width:width/1.3,height:hieght/4.5,child:Column(mainAxisAlignment:MainAxisAlignment.spaceAround
      ,crossAxisAlignment: CrossAxisAlignment.center,
      children: [Row(mainAxisAlignment:MainAxisAlignment.spaceAround,children: [TextButton(onPressed: () {},child: Container(width:width/3,height:50,
      decoration:BoxDecoration(borderRadius:BorderRadius.circular(15),color:Colors.white,boxShadow: [
  BoxShadow(
    color: Colors.grey.shade600,
    spreadRadius: 1,
    blurRadius: 5,
    offset: const Offset(0, 5),
  )
]),child:
    Center(child:Text('Preview',style:TextStyle(fontSize:25,color:Color.fromARGB(255, 11, 11, 11)),)),),

),TextButton(onPressed: () {},child: Container(width:width/3,height:50,decoration:BoxDecoration(borderRadius:BorderRadius.circular(15),color:Colors.white,boxShadow: [
  BoxShadow(
    color: Colors.grey.shade600,
    spreadRadius: 1,
    blurRadius: 5,
    offset: const Offset(0, 5),
  )
]),child:
    Center(child:Text('Review',style:TextStyle(fontSize:25,color:Color.fromARGB(255, 17, 16, 16)),)),)
),],),
TextButton(onPressed: () {},child:Container(width:width/1.3,height:50,decoration:BoxDecoration(borderRadius:BorderRadius.circular(15),color:Color.fromARGB(255, 8, 7, 7),boxShadow: [
  BoxShadow(
    color: Colors.grey.shade600,
    spreadRadius: 1,
    blurRadius: 5,
    offset: const Offset(0, 5),
  )
]),child:
    Center(child:Text('Buy Now',style:TextStyle(fontSize:25,color:Colors.white),)),)
),
],
    )
    ))
    ]
    ),
    ),
    );
  }
}