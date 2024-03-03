import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase'),
      ),

      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.black,
                )
              ),

              width: MediaQuery.of(context).size.width * .8,
              child:  TextField(
                controller: emailController,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 25),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

                    Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.black,
                )
              ),

              width: MediaQuery.of(context).size.width * .8,
              child:  TextField(
                controller: passwordController,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 25),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),

       
          ElevatedButton(style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red
          ),
          onPressed: () {},
           child: Text('Login')),

          ElevatedButton(style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green
          ),
          onPressed: () {},
           child: Text('SignUp'))
         
        ],
      )),
    );
  }
}