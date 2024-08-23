import 'package:flutter/material.dart';
import 'package:signin_and_signup/components/my_button.dart';
import 'package:signin_and_signup/components/my_textfield.dart';
import 'package:signin_and_signup/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // Welcome back, you've been missed
              Text(
                "Welcome back you've been missed!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextfield(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextfield(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password ?",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 10),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      "Or Continue with",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(imagePath: "images/google.png"),

                  const SizedBox(width: 10),

                  // apple button
                  SquareTile(imagePath: "images/apple.png")
                ],
              ),

              const SizedBox(height: 50),

              // not a memeber? register now!
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?"),
                  const SizedBox(width: 4),
                  Text(
                    "Register Now",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
