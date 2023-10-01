import 'package:flutter/material.dart';
import 'package:login_firebase/home.dart';
import 'package:login_firebase/registration.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();

}

class _loginState extends State<login> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    /* double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
*/
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validate : (){}
      onSaved: (value){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefix: Icon(Icons.mail),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );
    final passwordField = TextFormField(
      obscureText: true,
      autofocus: false,
      controller: passwordController,
      // validate : (){}
      onSaved: (value){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefix: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),
    );

    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: Colors.deepPurple,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        },
        child: Text("Login",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
    );

    return Scaffold(
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
                        height: 200,
                        child: Image.asset("assets/logo.PNG",
                        fit:BoxFit.contain
                        ),
                      ),
                      SizedBox(height: 45,),
                      emailField,
                      SizedBox(height: 24,),
                      passwordField,
                      SizedBox(height: 45,),
                      loginButton,
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an Account?"),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationScreen()));
                            },
                            child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.deepPurple),),
                          )
                        ],
                      )

                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

