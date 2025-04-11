import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/provider/auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            textAlign: TextAlign.center,
            controller: emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              hintText: 'email'
            ),
          ),
          SizedBox(height: 50,),
          TextFormField(
            textAlign: TextAlign.center,
            controller: passwordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
                hintText: 'Password',

            ),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              authProvider.login(emailController.toString() , passwordController.toString());
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: authProvider.loading? CircularProgressIndicator(color: Colors.white,): Text('Login')),
            ),
          )
        ],
      ),
    );
  }
}
