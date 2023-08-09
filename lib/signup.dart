import 'package:flutter/material.dart';



class Firsts extends StatefulWidget {
  const Firsts({Key? key}) : super(key: key);


  @override
  _FirstsState createState() => _FirstsState();
}

class _FirstsState extends State<Firsts> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: const SignUp(),
    );
  }
}


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 0.0,top:30.0,right:0.0,bottom:0.0),
                child: Text('Create Account!',
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
                child: Text('Input your details to get started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.normal,
                  ),),
              ),
            ),
            Form(
              key: formKey,
              child: Container (
                padding: const EdgeInsets.only(top: 40.0,left: 40.0,right: 40.0,bottom: 10.0),
                child: Column(
                  children: [
                    TextField(
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all( Radius.circular(15.0)),
                          borderSide:  BorderSide(width: 2.0, color: Colors.blueGrey),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all( Radius.circular(15.0)),
                          borderSide:  BorderSide(width: 2.0, color: Colors.blueGrey),
                        ),
                        labelText: 'Full Name',
                        // hintText: 'Full Name',
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
            ),
            const SizedBox(height:20.0),
            Container (
              padding: const EdgeInsets.only(top: 0.0,left: 40.0,right: 40.0,bottom: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    validator: (value){
                      if (value!.isEmpty || RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}').hasMatch(value)){
                        return 'Invalid Email address';
                      }else {
                        return null;
                      }
                    },
                      style:const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(width: 2.0, color: Colors.blueGrey),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(width: 2.0, color: Colors.blueGrey),
                        ),
                        labelText: 'Email Address',
                        // hintText: 'Email Address',
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
            const SizedBox(height:20.0),
            Container (
              padding: const EdgeInsets.only(top: 0.0,left: 40.0,right: 40.0,bottom: 10.0),
              child: Column(
                children: [
                  TextFormField(
                    validator: (value){
                      // ignore: valid_regexps
                      if (value!.isEmpty || RegExp(r'^[+]*[(]{0,1}[0,9]{1,4}[)]{0,1}[-\s\./0-9+$').hasMatch(value)){
                        return 'Invalid number';
                      }else {
                        return null;
                      }


                    },
                      keyboardType:TextInputType.number,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide:  BorderSide(width: 2.0, color: Colors.blueGrey),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(width: 2.0, color: Colors.blueGrey),
                        ),
                        labelText: 'Phone Number',
                        // hintText: 'Phone Number',
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
            const SizedBox(height:20.0),
            Container (
              padding: const EdgeInsets.only(top: 0.0,left: 40.0,right: 40.0,bottom: 0.0),
              child: Column(
                children: [
                  TextField(
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    obscureText:true,
                    decoration: InputDecoration(
                      fillColor: Colors.red,
                      enabledBorder:const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(width: 2.0, color: Colors.blueGrey),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(width: 2.0, color: Colors.blueGrey),
                      ),
                      labelText: 'Create Password',
                      // hintText: ' Create Password',
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
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.only(top: 0,right: 35.0,left: 35.0,bottom: 0.0),
              child: Material(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.blue[400],
                child: GestureDetector(
                  onTap: (){
                    if(formKey.currentState!.validate()){
                      const snackBar = SnackBar(content: Text('submitting form'));
                      _scaffoldKey.currentState!.showSnackBar(snackBar);
                      print(Navigator.of(context).pushNamed('/'));
                    }
                  },
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 0.0,top: 20.0,right: 0.0,bottom: 20.0),
                      child: (
                          Text('Continue',
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
                const Text("Already have an account? ",
                    style: TextStyle(
                      fontSize: 19.0,
                    )),
                const SizedBox(width: 0.0,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/');
                  },
                  child: Text('Login',
                      style:TextStyle(
                        fontSize: 19.0,
                        color: Colors.blue[900],
                      ) ),
                ),
              ],
            ),
            const SizedBox(height: 20.0,),
          ],
        ),
      ),
    );
  }
}



