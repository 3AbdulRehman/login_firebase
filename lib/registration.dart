import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //our formkey key
  final _formkey = GlobalKey<FormState>();
  //editing Controller
  final firstnameEditingController = new TextEditingController();
  final secondnameEditingController = new TextEditingController();
  final emailEditingController = new TextEditingController();
  final passwordEditingController = new TextEditingController();
  final confrimpasswordEditingController = new TextEditingController();




  @override
  Widget build(BuildContext context) {
    // first name Field
    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstnameEditingController,
      keyboardType: TextInputType.name,
      // validate : (){}
      onSaved: (value){
        firstnameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefix: Icon(Icons.person),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "First name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
    // Second Name field
    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondnameEditingController,
      keyboardType: TextInputType.name,
      // validate : (){}
      onSaved: (value){
        secondnameEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefix: Icon(Icons.person),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Second Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
    // Email Field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      // validate : (){}
      onSaved: (value){
        emailEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefix: Icon(Icons.email),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
    // password Field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: true,
      // validate : (){}
      onSaved: (value){
        passwordEditingController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefix: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );
    // Confirm Password Field
    final confirmpasswordField = TextFormField(
      autofocus: false,
      controller: confrimpasswordEditingController,
      obscureText: true,
      // validate : (){}
      onSaved: (value){
        confrimpasswordEditingController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefix: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );

    //Sign Up Button
    final SignupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: Colors.deepPurple,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){},
        child: Text("Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
    );




    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.deepPurple,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),

      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children:<Widget> [
                      SizedBox(
                        height: 180,
                        child: Image.asset("assets/logo.PNG",
                            fit:BoxFit.contain
                        ),
                      ),
                      SizedBox(height: 45,),
                      firstNameField,
                      SizedBox(height: 15,),
                      secondNameField,
                      SizedBox(height: 15,),
                      emailField,
                      SizedBox(height: 15,),
                      passwordField,
                      SizedBox(height: 15,),
                      confirmpasswordField,
                      SizedBox(height: 25,),
                      SignupButton,

                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
