import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:netflix/screens/signUpPage.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
    
              SizedBox(height: MediaQuery.of(context).size.height * .10),
              const Text('Welcome',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
              const Text('to', style: TextStyle(color: Colors.white, fontSize: 18)),
              Image.asset(
                'assets/images/Netflix-symbol.jpg',
                width: 200,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .08),
              MaterialButton(
                onPressed: () {},
                color: const Color.fromARGB(255, 192, 22, 10),
                minWidth: 350,
                height: 40,
                child: const Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 29),
                child: Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: RichText(
                        text:  TextSpan(text: 'Dont have an account?',style: TextStyle(
                        color: Colors.grey
                      ),children: [TextSpan(
                        recognizer: TapGestureRecognizer()..onTap =(){
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context)=>signUpPage())));
                        },
                        text: 'SignUp',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ))])),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
