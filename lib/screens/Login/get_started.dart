import 'package:flutter/material.dart';
import 'package:social/screens/Login/login_screen.dart' as login;
import 'package:social/screens/Login/signup_screen.dart' as signup;



class GetStarted extends StatelessWidget{
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("Login")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle login
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const login.LoginScreen())
                );
              },
              child: const Text("Login"),
            ),
            ElevatedButton(
              onPressed:(){
                // Handle sign up
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:(context) => const signup.SignupScreen()
                  )
                );
              },
              child: const Text("Signup")
            )
          ],
        ),
      )
    );
  }
}