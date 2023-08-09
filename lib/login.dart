import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: welcome_back(),
    );
  }
}
// ignore: camel_case_types
class welcome_back extends StatelessWidget {
  const welcome_back({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
          children: [
             const Center(
               child: Padding(
                 padding: EdgeInsets.only(left: 0.0,top:150.0,right:0.0,bottom:0.0),
                 child: Text('Welcome Back!',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 40.0,
                     fontWeight: FontWeight.bold,
                   ),),
               ),
             ),
             const Center(
               child: Padding(
                 padding: EdgeInsets.only(left: 0.0,top:10.0,right:0.0,bottom:0.0),
                 child: Text('Happy to see you again',
                   textAlign: TextAlign.center,
                   style: TextStyle(
                     fontSize: 20.0,
                     fontWeight: FontWeight.normal,
                   ),),
               ),
             ),
            Container (
              padding: const EdgeInsets.only(top: 80.0,left: 40.0,right: 40.0,bottom: 10.0),
              child: Column(
                children: const [
                  EnterName(),
                ],
              ),

            ),
            const SizedBox(height:20.0),
            Container (
              padding: const EdgeInsets.only(top: 0.0,left: 40.0,right: 40.0,bottom: 0.0),
              child: Column(
                children: [
                  TextFormField(
                      keyboardType:TextInputType.datetime,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      obscureText:true,
                      decoration: InputDecoration(
                        fillColor: Colors.red,
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(width: 2.0, color: Colors.blueGrey),
                        ),
                        focusedBorder: const  OutlineInputBorder(
                          borderRadius: BorderRadius.all( Radius.circular(15.0)),
                          borderSide:  BorderSide(width: 2.0, color: Colors.blueGrey),
                        ),
                        // labelText: 'Enter your name',
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                          color: Colors.blue[400],
                        ),
                      ),
                    ),
                ],
              ),

            ),
            const SizedBox(height: 20.0, ),
            Container(
              alignment: const Alignment(0.7,0.0),
              padding: const EdgeInsets.only(top: 15.0, left: 40.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/reset');
                },
                child: const Text('Forgot Password',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                )),
              ),
            ),
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.only(top: 0,right: 35.0,left: 35.0,bottom: 0.0),
              child: Material(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.blue[400],
                child: GestureDetector(
                  onTap: (){},
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 0.0,top: 20.0,right: 0.0,bottom: 20.0),
                      child: (
                       Text('Log in',
                        style:TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ) ,
                       )
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? ",
                style: TextStyle(
                  fontSize: 19.0,
                )),
                const SizedBox(width: 0.0,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/reset');
                  },
                  child: Text('Create one here',
                  style:TextStyle(
                    fontSize: 19.0,
                    color: Colors.blue[900],
                  ) ),
                ),
              ],
            ),
    ],
    ),
        ),
    );
  }
}
class EnterName extends StatefulWidget {
  const EnterName({Key? key}) : super(key: key);

  @override
  _EnterNameState createState() => _EnterNameState();
}

class _EnterNameState extends State<EnterName> {

  
  @override
  Widget build(BuildContext context) {
    return Form(
      // key: _Key,
      // auto validateMode: true,
      child: TextFormField(
        validator: (value){
          if (value!.isEmpty || !RegExp(r'^[a-z A-z]+$').hasMatch(value)){
            return "Please Enter Correct Value";
          }else {
            return null;
          }
        },
          style: const TextStyle(
            fontSize: 20,
          ),
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              borderSide: BorderSide(width: 2.0, color: Colors.blueGrey),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all( Radius.circular(15.0)),
              borderSide: BorderSide(width: 2.0, color: Colors.blueGrey),
            ),
            // labelText: 'Enter your name',
            hintText: 'Enter Your Name',
            hintStyle: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20.0,
              color: Colors.blue[400],
            ),
          ),
        ),
    );
  }
}



