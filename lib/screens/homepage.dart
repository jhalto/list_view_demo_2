import 'package:flutter/material.dart';
import 'package:list_view_demo_2/screens/student_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/abstract-blurred-multi-colored-background-generative-ai_169016-30198.jpg?size=626&ext=jpg&ga=GA1.1.523418798.1710547200&semt=ais"),opacity: .5,fit: BoxFit.fill)),

          child: SingleChildScrollView(
            child: Column(
              children: [
                    Text("Total employee is ${myList.length}"),
                    Row(children: [
                      Expanded(child: Text("id"),),
                      Expanded(child: Text("name"),),
                      Expanded(child: Text("salary"),),
                      Expanded(child: Text("address"),),
                    ],),
                    ListView.builder(

                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                        itemCount: myList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Row(

                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: Container(
                                    height: 50,
                                    margin: EdgeInsets.only(bottom: 5),
                                    color: Colors.blue.withOpacity(.3),child: Text("${myList[index].id}",style: TextStyle(fontWeight: FontWeight.bold),))),

                                Expanded(child: Container(
                                    height: 50,
                                    color: Colors.red.withOpacity(.3),
                                    child: Text("${myList[index].name}"))),

                                Expanded(child: Container(
                                    height: 50,
                                    color: Colors.green.withOpacity(.3),
                                    child: Text("${myList[index].salary}"))),

                                Expanded(
                                    child: Container(
                                        height: 50,
                                        color:Colors.orangeAccent.withOpacity(.3),
                                        child: Text("${myList[index].address}"))),

                              ],
                            ),
                          );
                        },)
                

                      ],
                    ),
          ),
                ),
            
          ),
        
    );
  }
}
