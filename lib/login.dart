import 'package:day9app/dashboard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController driverIdController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  bool rememberMe = true;
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        width: double.infinity,
        

        decoration: const BoxDecoration(

          gradient: LinearGradient(

            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,

            colors: [

              Color(0xff8ED6FF),
              Color(0xffEAF8FF),
              Colors.white,

            ],
          ),
        ),

        child: SafeArea(

          child: SingleChildScrollView(

            child: Padding(

              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),

              child: Column(

                children: [

                  const SizedBox(height: 20),

                  Align(

                    alignment: Alignment.topRight,

                    child: TextButton(

                      onPressed: () {},

                      child: const Text(

                        "Help",

                        style: TextStyle(

                          color: Color(0xff1565C0),

                          fontSize: 16,

                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Image.network(

                    "https://static.vecteezy.com/system/resources/thumbnails/049/955/583/small/an-orange-bus-is-shown-on-a-black-background-png.png",

                    height: 200,

                    fit: BoxFit.contain,

                  ),

                  const SizedBox(height: 20),

                  const Text(

                    "Welcome Back,\nMr.Ewaan!",

                    textAlign: TextAlign.center,

                    style: TextStyle(

                      fontSize: 32,

                      fontWeight: FontWeight.bold,

                      color: Color(0xff1565C0),
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(

                    "Sign in to continue your journey\nand manage today's trips.",

                    textAlign: TextAlign.center,

                    style: TextStyle(

                      color: Colors.black54,

                      fontSize: 16,

                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 25),

                  Container(

                    padding: const EdgeInsets.all(18),

                    decoration: BoxDecoration(

                      color: Colors.white.withOpacity(.85),

                      borderRadius: BorderRadius.circular(25),

                      boxShadow: [

                        BoxShadow(

                          color: Colors.blue.withOpacity(.12),

                          blurRadius: 20,

                          offset: const Offset(0, 8),

                        ),

                      ],
                    ),

                    child: const Text(

                      "Drive safely and keep students updated with live bus tracking.",

                      textAlign: TextAlign.center,

                      style: TextStyle(

                        fontSize: 15,

                        color: Colors.black87,

                        height: 1.5,
                      ),
                    ),

                  ),

                  const SizedBox(height: 35),

                  // Driver ID
TextField(
  controller: driverIdController,
  decoration: InputDecoration(
    hintText: "Driver ID",
    prefixIcon: const Icon(
      Icons.badge_outlined,
      color: Color(0xff1565C0),
    ),
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 18,
      horizontal: 20,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(
        color: Color(0xff1565C0),
        width: 2,
      ),
    ),
  ),
),

const SizedBox(height: 20),

// Password
TextField(
  controller: passwordController,
  obscureText: obscurePassword,
  decoration: InputDecoration(
    hintText: "Password",
    prefixIcon: const Icon(
      Icons.lock_outline,
      color: Color(0xff1565C0),
    ),
    suffixIcon: IconButton(
      onPressed: () {
        setState(() {
          obscurePassword = !obscurePassword;
        });
      },
      icon: Icon(
        obscurePassword
            ? Icons.visibility_off
            : Icons.visibility,
        color: Colors.grey,
      ),
    ),
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 18,
      horizontal: 20,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(
        color: Color(0xff1565C0),
        width: 2,
      ),
    ),
  ),
),

const SizedBox(height: 15),

// Remember Me & Forgot Password
Row(
  children: [
    Checkbox(
      value: rememberMe,
      activeColor: const Color(0xff1565C0),
      onChanged: (value) {
        setState(() {
          rememberMe = value!;
        });
      },
    ),

    const Text(
      "Remember Me",
      style: TextStyle(
        fontWeight: FontWeight.w500,
      ),
    ),

    const Spacer(),

    TextButton(
      onPressed: () {},
      child: const Text(
        "Forgot Password?",
        style: TextStyle(
          color: Color(0xff1565C0),
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ],
),

const SizedBox(height: 30),
// Login Button
SizedBox(
  width: double.infinity,
  height: 58,
  child: ElevatedButton(
    onPressed: () {
      if (driverIdController.text.isEmpty ||
          passwordController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Please enter Driver ID and Password"),
            backgroundColor: Colors.red,
          ),
        );
      } else {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Login Successful!"),
      backgroundColor: Colors.green,
    ),
  );

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => DashboardScreen() ,
    ),
  );
}
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff1565C0),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),
    child: const Text(
      "LOGIN",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1,
      ),
    ),
  ),
),

const SizedBox(height: 25),

const Divider(),

const SizedBox(height: 15),

const Text(
  "Need Help?",
  style: TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  ),
),

const SizedBox(height: 10),

TextButton.icon(
  onPressed: () {},
  icon: const Icon(
    Icons.support_agent,
    color: Color(0xff1565C0),
  ),
  label: const Text(
    "Contact Transport Admin",
    style: TextStyle(
      color: Color(0xff1565C0),
      fontWeight: FontWeight.bold,
    ),
  ),
),

const SizedBox(height: 20),

const Text(
  "CampusRide Driver v1.0",
  style: TextStyle(
    color: Colors.grey,
    fontSize: 13,
  ),
),

const SizedBox(height: 30),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}