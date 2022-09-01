import 'package:book_store_app/list_page/page_one.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class MyTextFields extends StatefulWidget {
  const MyTextFields({super.key
  
  });

  @override
  State<MyTextFields> createState() => _MyTextFieldsState();
}

class _MyTextFieldsState extends State<MyTextFields> {
var co;
TextEditingController controlar1= TextEditingController();
final TextEditingController controlar2= TextEditingController();
final TextEditingController controlar3= TextEditingController();
final TextEditingController controlar4= TextEditingController();
final TextEditingController controlar5= TextEditingController();
var size,height,width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height=size.height;
    width=size.width;
    return Scaffold(backgroundColor:Color.fromARGB(255, 234, 231, 231)
    ,body: Padding(padding:EdgeInsets.symmetric(vertical: 30,horizontal: 25),
     child:Expanded(child:Column(mainAxisAlignment:MainAxisAlignment.spaceAround,
      children:[Text("Add Book",style:TextStyle(color:Colors.black,fontSize:24,fontWeight:FontWeight.bold),),
      TextButton(onPressed: (){Navigator.push(
    context,MaterialPageRoute(builder: (context) => PageOne() ));},
    child:Icon(Icons.arrow_back_ios_new,size: 30,color:Colors.black,)),
      
        TextField(controller:controlar1,
        onSubmitted:((value1) {
          co=value1;
          setState(() {});
        }) 
        ,decoration:InputDecoration(hintText:'Enter Name',labelText:"BookName"
        ,labelStyle:TextStyle(fontSize:16,color:Colors.black)
        ,border:OutlineInputBorder(borderRadius:BorderRadius.circular(10)
        ),fillColor:Color.fromARGB(255, 249, 241, 241),filled:true)
        
        ),
        TextField(controller:controlar2,onSubmitted:((value2) => null
         // MyList.mylist.add(value4);
          
          //setState(() {});
        ) ,
        decoration:InputDecoration(hintText:'Enter Author Name',labelText:"Author name"
        ,labelStyle:TextStyle(fontSize:16,color:Colors.black)
        ,border:OutlineInputBorder(borderRadius:BorderRadius.circular(10)
        ),fillColor:Color.fromARGB(255, 249, 241, 241),filled:true)
        ),

        TextField(controller:controlar3,onSubmitted:((value3) => null
         // MyList.mylist.add(value4);
          
          //setState(() {});
        ) 
        ,decoration:InputDecoration(hintText: "Enter Price",labelText:'Price'
        ,labelStyle:TextStyle(fontSize:16,color:Colors.black)
        ,border:OutlineInputBorder(borderRadius:BorderRadius.circular(10)
        ),fillColor:Color.fromARGB(255, 249, 241, 241),filled:true)
        ),

        TextField(controller: controlar4,onSubmitted:((value4)=>null
         // MyList.mylist.add(value4);
          
          //setState(() {});
        ) 
        ,decoration:InputDecoration(hintText:"Enter Image Link", labelText: "image Linke"
        ,labelStyle:TextStyle(fontSize:16,color:Colors.black)
        ,border:OutlineInputBorder(borderRadius:BorderRadius.circular(10)
        ),fillColor:Color.fromARGB(255, 249, 241, 241),filled:true)
        ),
        TextField(controller:controlar5,onSubmitted:((value5) => null
         // MyList.mylist.add(value4);
          
          //setState(() {});
        ) 
        ,decoration:InputDecoration(hintText:"Enter Discrption", labelText:'Discription'
        ,labelStyle:TextStyle(fontSize:16,color:Colors.black)
        ,border:OutlineInputBorder(borderRadius:BorderRadius.circular(10)
        ),fillColor:Color.fromARGB(255, 249, 241, 241),filled:true)
        )

       ,TextButton(onPressed:(){
      
       setState(() {
         MyList.add_Book(controlar1.text,controlar2.text,controlar3.text,controlar4.text,controlar5.text);
         print(MyList.mylist);
       });
       
       controlar1.clear();
       controlar2.clear();
       controlar3.clear();
       controlar4.clear();
       controlar5.clear();}, 
       child: Container(width:150,height:59,decoration:BoxDecoration(
        color: Colors.black,
        borderRadius:BorderRadius.circular(20)
       ),
       child: Center(child: Text('Add',style:TextStyle(fontSize:24,color: Colors.white,
       ),),)))]
        ))) 
        ,
        );
  }
}

// class BuilTextField extends StatelessWidget {
//   const BuilTextField({super.key,required this.Controller,required this.Lable,required});
//   final TextEditingController Controller;
//   final String Lable,Enter;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(controller: controlar4,onSubmitted:((value4) {
//           content.add(value4);
//           controlar4.clear;
//           setState(() {});
//         }) 
//         ,decoration:InputDecoration(hintText:"Enter Image Link", labelText: "image Linke"
//         ,labelStyle:TextStyle(fontSize:16,color:Colors.black)
//         ,border:OutlineInputBorder(borderRadius:BorderRadius.circular(10)
//         ),fillColor:Color.fromARGB(255, 249, 241, 241),filled:true)
//         ), ;
//   }
// }

class MyList{
  final String Book_Name; 
 final String Autor_NAme;
 final String Prrice_Book; 
 final String Link,DisCripTion;
 MyList(this.Book_Name,this.Autor_NAme,this.Prrice_Book,this.Link,this.DisCripTion); 
static List<MyList> mylist=[];


static add_Book(String Book_NAme,String Auth_Name,String PRice,String LInk,String Dis){
  
mylist.add(MyList(Book_NAme, Auth_Name, PRice, LInk, Dis));
}

}