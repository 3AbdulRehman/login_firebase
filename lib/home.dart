import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [
              SizedBox(
                height: 150,
                child: Image.asset("assets/logo.PNG",fit: BoxFit.contain,)
              ),
              Text("Welcome Back",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              Text("Name",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
              Text("Email",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
              SizedBox(height: 15,),
              ActionChip(label: Text("Laguot"), onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}
