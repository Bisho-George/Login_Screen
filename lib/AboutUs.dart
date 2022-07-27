import 'dart:convert';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 50,
        scrolledUnderElevation: 30,
        primary: true,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'AboutUs',
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notification_important,
              ),
              onPressed: onNotification),
          IconButton(
            icon: Text(
              'hello',
            ),
            onPressed: () {
              print('hello');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                color: Colors.black,
                height: 40,
                child: MaterialButton(
                  onPressed: () {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('don\'t have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: Text('Register Now'),
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }

  void onNotification() {
    print('Notified clicked');
  }
}
