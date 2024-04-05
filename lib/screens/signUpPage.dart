import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/screens/loginPage.dart';

class signUpPage extends StatelessWidget {

TextEditingController passController = TextEditingController();
var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/png-transparent-netflix-logo.png',
                  width: 130,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                const Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Row(children: [
                    Text(
                      'Sign up',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                  ]),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    validator: (email){
                      if(email!.isEmpty || !email.contains('@')){
                        return 'email must be valid';
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Email address',
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: passController,
                    validator: (password){
                      if(password!.isEmpty || password.length<6){
                        return 'password is empty/check the lenght';
                      }return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    validator: (confirmpassword){
                      if(confirmpassword!.isEmpty || confirmpassword != passController.text){
                        return 'password mismatch';
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                MaterialButton(
                  onPressed: () {
                    var valid = formKey.currentState!.validate();
                    if(valid == true){Navigator.push(context, MaterialPageRoute(builder: (context)=> loginPage()));
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Registration failed')));
                        }
                  },
                  color: const Color.fromARGB(255, 197, 30, 18),
                  minWidth: 350,
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .03),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: 'Already have an account?',
                              children: [
                            TextSpan(
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: ((context) => loginPage())));
                                  },
                                text: 'Log in',
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold))
                          ]))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
