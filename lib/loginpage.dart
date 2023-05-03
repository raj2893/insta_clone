import 'package:flutter/material.dart';
import 'package:insta_clone/homepage.dart';
import 'package:insta_clone/main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _showReminder() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Please enter your email and password'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'Please enter your email';
                  }
                  // You can add additional email validation logic here
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: 'Password'),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return 'Please enter your password';
                  }

                  // You can add additional password validation logic here
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  (_formKey.currentState!.validate())
                      ?
                      //   // You can add your login logic here
                      //   // For example, you can call a login API
                      //   // and navigate to the home screen if successful
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyHomePage()))
                      : _showReminder();
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
