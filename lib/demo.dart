import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  Demo({super.key});

  @override
  State<Demo> createState() => _Demostate();
  // TODO: implement createState
}

class _Demostate extends State<Demo> {
  final TextEditingController passwordController = TextEditingController();
  bool obscpass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          obscureText: obscpass,
          decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: Icon(Icons.lock),
            suffixIcon: IconButton(onPressed: (){
              setState(() {
                obscpass = !obscpass;
              });
            }, icon: obscpass ?
            Icon(Icons.visibility) : Icon(Icons.visibility_off  )),
          ),
        ),
      ),
    );
  }
}
