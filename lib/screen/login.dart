import 'package:flutter/material.dart';
import 'package:somphotapp/screen/home.dart';
import 'package:somphotapp/widget/navbar.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
    var isLogin = false;
  void _login() {
    final username = _usernameController.text;
    final password = _passwordController.text;
 
    // Implement your login logic here
    // For example, you can use a local authentication method or API call
    print('Username: $username, Password: $password');
    if(username != null || password != null){
      isLogin = true;
       Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Navbar()),
      );
    }else{
      isLogin = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed:  _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
