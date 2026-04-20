import 'package:flutter/material.dart';
import 'home_withtabs.dart';
import 'login.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool obscurePassword = true;
  String? errorMessage;

  void login() {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final specialCharRegex = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

    if (email.contains('@') && password.length >= 6) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeWithTabs()),
      );
    } else {
      setState(() {
        if (!email.contains('@')) {
          errorMessage = 'Invalid email';
        } else if (password.length < 6 || !specialCharRegex.hasMatch(password)) {
          errorMessage = 'Password should contain at least one special character';
        } else {
          errorMessage = null;

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => HomeWithTabs()),
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
               SizedBox(height: 40),

               SizedBox(height: 80),

              Image.asset(
                'assets/images/face.png',
                height: 90,
              ),

               SizedBox(height: 20),

               SizedBox(height: 40),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16)),
                child: TextField(
                  controller: emailController,
                  decoration:  InputDecoration(
                    hintText: 'Mobile Number or Email Address',
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                ),
              ),

               SizedBox(height: 15),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16)),
                child: TextField(
                  controller: passwordController,
                  obscureText: obscurePassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
                    suffixIcon: IconButton(
                      icon: Icon(
                        obscurePassword ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          obscurePassword = !obscurePassword;
                        });
                      },
                    ),
                  ),
                ),
              ),

               SizedBox(height: 15),

              if (errorMessage != null)
                Text(
                  errorMessage!,
                  style:  TextStyle(color: Colors.red),
                ),

               SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  Color(0xFF1877F2),
                  ),
                  child:  Text(
                    'Login',
                    style: TextStyle(fontSize: 16,color: Colors.white),
                  ),
                ),
              ),

               SizedBox(height: 10),

              TextButton(
                onPressed: () {},
                child:  Text(
                  'Forgotten Password?',
                  style: TextStyle(color: Colors.grey),
                ),
              ),

               Spacer(),

              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16)),
                child: SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side:  BorderSide(color: Color(0xFF1877F2)),
                      elevation: 5,
                    ),
                    child:  Text(
                      'Create Account',
                      style: TextStyle(
                        color: Color(0xFF1877F2),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),

               SizedBox(height: 20),

              Image.asset(
                'assets/images/meta.png',
                height: 40,
              ),

               SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
