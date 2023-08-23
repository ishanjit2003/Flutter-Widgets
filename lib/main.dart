import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Center(child: Text("Widgets")),
              backgroundColor: Colors.black.withOpacity(.5),
            ),
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder:(context,index){
                        return  ListTile(
                          leading:
                          CircleAvatar(
                            backgroundColor: Colors.black,

                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/18024337/pexels-photo-18024337/free-photo-of-a-man-with-fire-in-blue-hour.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                          title: Text("Ishanjit"),
                          subtitle: Text("chammak challo"),
                          trailing: Text("3:50pm"),
                        );
                          //Text("item"+index.toString());
                      },
                    ),
                  )
                ])),
      ),
    );
  }
}

//EXPANDED WIDGET ,FLEX

// Expanded(
// flex: 2,
// child: Container(
// color: Colors.red,
// height:200,
// child: const Text("cont 4"),
// ),
// ),
// Expanded(
// flex: 2,
// child: Container(
// color: Colors.green,
// height:200,
// child: const Text("cont 4"),
// ),
// ),
// Expanded(
// flex: 2,
// child: Container(
// color: Colors.yellow,
// height:200,
// child: const Text("cont 4"),
// ),
// ),

//CONTAINER PROPS

// Center
// (
// child: Container(
// //transform: Matrix4.rotationZ(0.2),
// height: 100,
// width: 100,
// // margin: EdgeInsets.only(
// //    left: 50
// //  ),
// decoration: const BoxDecoration(
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(30),
// bottomLeft: Radius.circular(30),
// ),
// // border: Border.all(color: Colors.black, width: 0),
// color: Colors.deepOrange,
// boxShadow: [
// BoxShadow(color: Colors.red, blurRadius: 100),
// ],
// image: DecorationImage(
// fit: BoxFit.fill,
// image: NetworkImage('https://images.pexels.com/photos/19670/pexels-photo.jpg'))),
//
// child: const Center(child: Text("container 1")),
// ),
// )

// STACK WIDGET

// Stack(
// alignment: Alignment.center,
// children: [
// Container(height: 200, width: 200,color: Colors.red),
// Container(height: 150, width:150,color: Colors.green),
// Positioned(
// top: 0,
// child: Container(height: 100, width: 100, color: Colors.yellow)),
// Text("hello ishan")],
// )

//CIRCULAR AVATAR WITH DIVIDER

// Divider(color: Colors.black,thickness: 1,),
// SizedBox(child: VerticalDivider(color: Colors.black,),height: 100,),
// Divider(color: Colors.black,thickness: 1,),
// Center(
// child: CircleAvatar(
// backgroundColor: Colors.black,
// radius: 100,
// backgroundImage: NetworkImage(
// "https://images.pexels.com/photos/18024337/pexels-photo-18024337/free-photo-of-a-man-with-fire-in-blue-hour.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
// ),
// )

//RICH TEXT

// RichText(
// text: TextSpan(
// text: "hello",
// style: Theme.of(context).textTheme.bodyText1,
// children: const [
// TextSpan(text: "world",style: TextStyle(fontSize: 50,color: Colors.red))
// ]
// )
// )


//TEXT FORM FIELD WIDGET

// Padding(
// padding: const EdgeInsets.all(8.0),
// child: TextFormField(
// keyboardType: TextInputType.emailAddress,
// style:
// const TextStyle(fontSize: 20, color: Colors.green),
// cursorColor: Colors.deepOrange,
// //enabled: true,
//
// decoration: InputDecoration(
// prefixIcon: Icon(Icons.email,color: Colors.green,),
// suffixIcon:Icon(Icons.panorama_fish_eye,color: Colors.red,) ,
// filled: true,
// fillColor: Colors.grey.withOpacity(0.3),
// hintText: "Email",
// //labelText: "Email",
// hintStyle:
// TextStyle(color: Colors.red, fontSize: 12),
//
// enabledBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.black),
// borderRadius: BorderRadius.circular(10)
// ),
//
// focusedBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.green),
// borderRadius: BorderRadius.circular(10)
// ),
//
// errorBorder: OutlineInputBorder(
// borderSide: BorderSide(color: Colors.red),
// borderRadius: BorderRadius.circular(10)
// )
// ),
// onChanged:(value){
// print(value);
// },
// ),
// )

//LIST VIEW TILE AND BUILDER

// Expanded(
// child: ListView.builder(
// itemCount: 5,
// itemBuilder:(context,index){
// return  ListTile(
// leading:
// CircleAvatar(
// backgroundColor: Colors.black,
//
// backgroundImage: NetworkImage(
// "https://images.pexels.com/photos/18024337/pexels-photo-18024337/free-photo-of-a-man-with-fire-in-blue-hour.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
// ),
// title: Text("Ishanjit"),
// subtitle: Text("chammak challo"),
// trailing: Text("3:50pm"),
// );
// //Text("item"+index.toString());
// },
// ),
// )