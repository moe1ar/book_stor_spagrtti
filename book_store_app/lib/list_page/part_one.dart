import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PArtOne extends StatelessWidget {
  const PArtOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width:400,height:150,color:Color.fromARGB(255, 252, 248, 248) ,
    child:Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10)
    ,child:Column(mainAxisAlignment:MainAxisAlignment.spaceAround,children: [
      Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [ClipRRect(borderRadius:BorderRadius.circular(10),
      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjpduA5eYun6zMPcXhjrnlLUfJ81jCwG-9dA&usqp=CAU',
      width: 50,height: 50,))
      ,SizedBox(width: 10,)
      ,Text("Hi,Mohammed",style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,) ,)
      ,Spacer(),
      Icon(Icons.more_vert_outlined,size: 30,color:Colors.black,)],
    ),
    Container(height:65,decoration:BoxDecoration(borderRadius:BorderRadius.circular(30))
    ,child:TextField(decoration:InputDecoration(hintText:"search...",labelText:"Book name"
    ,labelStyle:TextStyle(fontSize:16,color: Colors.black),
    suffix:TextButton(onPressed: ()=>null, child:Icon(Icons.search,size: 30,color:Colors.black,)),
    border:InputBorder.none ,fillColor:Color.fromARGB(255, 255, 252, 252) ,filled: true),
  
   ))
      
    ])),);
  }
}