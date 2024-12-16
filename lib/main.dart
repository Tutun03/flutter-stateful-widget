import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Test(),
    )
  );
}

class Test extends StatefulWidget {


  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int number=0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue[200],
       appBar: AppBar(
         title:Text('ID CARD',
          style: TextStyle(
            color: Colors.white

          ),
         ),

         backgroundColor: Colors.blue[700],
         centerTitle: true,
         elevation: 0.0,// to remove the drop shadow

       ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Screenshot 2024-11-30 003143.png'),
              radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.blue[300],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey[900],
                letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Aniket Acharya',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                fontWeight: FontWeight.bold

              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                  color: Colors.grey[900],
                  letterSpacing: 2.0,


              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$number',
              style: TextStyle(
                  color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold

              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
              Icon(Icons.email,
              color:Colors.grey[50]),
                SizedBox(width: 10.0),
                Text(
                  'aniketacharya30@gmail.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ),
                )

              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          number=number+1;
        });
      },
          child: Icon(Icons.add),
      backgroundColor: Colors.amber),
    );
  }
}

// class Test1 extends StatefulWidget {
//   const Test1({super.key});
//
//   @override
//   State<Test1> createState() => _Test1State();
// }
//
// class _Test1State extends State<Test1> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
//here state class is _Test1State .It must be linked with the stateful widget ,the linkage is mentioned in the form of State<Test1>.The reason behind mentioning the Test1 inside State is to make the state class understand which stateful widget has to be linked.The Stateful widget and State are linked together.
//createmethod is just a function that links the state class and stateful widget.The createState() method is called by Flutter when it needs to create the state object for a StatefulWidget.Here, _Test1State() is the constructor of the State class _Test1State. It creates a new instance of _Test1State and returns it.