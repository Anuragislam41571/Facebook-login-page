import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  
  
  runApp(myapp() );
  
  
  
  
  
  
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),);
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,

      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,

        leading: Icon(Icons.arrow_back),
      ),



      body: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [



            Text("English(US) ",),
    SizedBox(height: 20,),
      Icon(Icons.facebook,size: 40,color: Colors.blue,),

SizedBox(
  height: 35,
),
            Container(

              padding: EdgeInsets.only(
                left: 15,right: 15,
              ),
              child: Column(



                children: [


                  TextField(

                    decoration: InputDecoration(


                      hintText: 'Mobile number or email',
                      labelText: 'Mobile number or email',
                      labelStyle: TextStyle(
                        fontSize: 15,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Colors.white,
                        suffixIcon: Icon(Icons.info_sharp,color: Colors.black38,),

                    ),




                  ),




SizedBox(
  height: 10,
),




                  TextField(
obscureText: true,
                    decoration: InputDecoration(


                      hintText: 'Password',
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontSize: 15,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Colors.white,
                      suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black38),

                    ),




                  ),

SizedBox(
  height: 15,
),

ElevatedButton(
    style: ElevatedButton.styleFrom(
backgroundColor: Colors.blue

    ),

    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>facebook()));
    }, child: Text('                                  Log in                                  ',style: TextStyle(
  color: Colors.white

),)),
                  SizedBox(
                    height: 16,
                  ),

                  TextButton(onPressed: (){}, child: Text('fogot password?',style: TextStyle(
                    color: Colors.black
                  ),)),

SizedBox(
  height: 110,
),

                  ElevatedButton(onPressed: (){}, child: Text('                       Create new account                    ',style: TextStyle(
                    color: Colors.blue,

                  ),)),
SizedBox(
  height: 15,
),


Text('~ Meta',style: TextStyle(
  color: Colors.black38
),)                ],
              ),




            )




          ],
        ),
      ),


    );
  }
}
class facebook  extends StatelessWidget {
  const facebook ({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          
          title: Text('facebook',style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w700

          ),),

          bottom: TabBar(tabs: [

            Tab(icon: Icon(Icons.home,color: Colors.blue,),),

            Tab(icon: Icon(Icons.people,),),
            Tab(icon: Icon(Icons.messenger,),),

            Tab(icon: Icon(Icons.notifications,),),

            Tab(icon: Icon(Icons.ondemand_video,),),
            Tab(icon: Icon(Icons.maps_home_work_outlined,),),


          ]),
        ),

        body: Row(
          children: [
            
            CircleAvatar(
              child: Image(image: NetworkImage('https://media.istockphoto.com/id/1300845620/vector/user-icon-flat-isolated-on-white-background-user-symbol-vector-illustration.jpg?s=612x612&w=0&k=20&c=yBeyba0hUkh14_jgv1OKqIH0CCSWU_4ckRkAoy2p73o=')),
            ),
            
          ],
        ),
        
      ),

    );
  }
}




