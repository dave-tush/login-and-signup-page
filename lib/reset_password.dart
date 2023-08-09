import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Reset(),
    );
  }
}

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 0.0,top:150.0,right:0.0,bottom:0.0),
                child: Text('Reset Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 60.0,top:10.0,right:60.0,bottom:0.0),
                child: Text('Your new password must be different from your previous password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    height: 1.5,
                    fontWeight: FontWeight.normal,
                  ),),
              ),
            ),
            Container (
              padding: EdgeInsets.only(top: 80.0,left: 40.0,right: 40.0,bottom: 10.0),
              child: Column(
                children: [
                  TextField(
                    style:const TextStyle(
                      fontSize: 20,
                    ),
                    obscureText:true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(new Radius.circular(15.0)),
                        borderSide: const BorderSide(width: 2.0, color: Colors.blueGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(new Radius.circular(15.0)),
                        borderSide: const BorderSide(width: 2.0, color: Colors.blueGrey),
                      ),
                      labelText: 'New Password',
                      // hintText: 'New Password',
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
            SizedBox(height:20.0),
            Container (
              padding: EdgeInsets.only(top: 0.0,left: 40.0,right: 40.0,bottom: 0.0),
              child: Column(
                children: [
                  TextField(
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                    obscureText:true,
                    decoration: InputDecoration(
                      fillColor: Colors.red,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(new Radius.circular(15.0)),
                        borderSide: const BorderSide(width: 2.0, color: Colors.blueGrey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(new Radius.circular(15.0)),
                        borderSide: const BorderSide(width: 2.0, color: Colors.blueGrey),
                      ),
                      labelText: 'Confirm Password',
                      // hintText: 'Confirm Password',
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
            SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.only(top: 0,right: 35.0,left: 35.0,bottom: 0.0),
              child: Container(
                child: Material(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.blue[400],
                  child: GestureDetector(
                    onTap: (){},
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 0.0,top: 20.0,right: 0.0,bottom: 20.0),
                        child: (
                            Text('Reset',
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
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ",
                    style: TextStyle(
                      fontSize: 19.0,
                    )),
                SizedBox(width: 0.0,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/sign');
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



