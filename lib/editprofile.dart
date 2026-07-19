import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController nameController =
      TextEditingController(text: "Ewaan Toms");

  final TextEditingController driverIdController =
      TextEditingController(text: "DRV004");

  final TextEditingController phoneController =
      TextEditingController(text: "9876543210");

  final TextEditingController busController =
      TextEditingController(text: "Bus 04");

  final TextEditingController routeController =
      TextEditingController(text: "Route 04");

  final TextEditingController emailController =
      TextEditingController(text: "ewaan@mec.edu.in");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAF8FF),

      appBar: AppBar(
        backgroundColor: const Color(0xff1565C0),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const SizedBox(height: 10),

            Stack(
              alignment: Alignment.bottomRight,
              children: [

                const CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Color(0xff1565C0),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    color: Color(0xff1565C0),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            const Text(
              "Change Profile Photo",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 25),

            TextField(
  controller: nameController,
  decoration: InputDecoration(
    labelText: "Driver Name",
    prefixIcon: const Icon(Icons.person),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
  ),
),

const SizedBox(height: 18),

TextField(
  controller: driverIdController,
  decoration: InputDecoration(
    labelText: "Driver ID",
    prefixIcon: const Icon(Icons.badge),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
  ),
),

const SizedBox(height: 18),

TextField(
  controller: phoneController,
  keyboardType: TextInputType.phone,
  decoration: InputDecoration(
    labelText: "Phone Number",
    prefixIcon: const Icon(Icons.phone),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
  ),
),

const SizedBox(height: 18),

TextField(
  controller: busController,
  decoration: InputDecoration(
    labelText: "Bus Number",
    prefixIcon: const Icon(Icons.directions_bus),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
  ),
),

const SizedBox(height: 18),

TextField(
  controller: routeController,
  decoration: InputDecoration(
    labelText: "Route Number",
    prefixIcon: const Icon(Icons.route),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
  ),
),

const SizedBox(height: 18),

TextField(
  controller: emailController,
  keyboardType: TextInputType.emailAddress,
  decoration: InputDecoration(
    labelText: "Email",
    prefixIcon: const Icon(Icons.email),
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide.none,
    ),
  ),
),

const SizedBox(height: 30),

SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton(
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Profile Updated Successfully"),
          backgroundColor: Colors.green,
        ),
      );

      Navigator.pop(context);
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xff1565C0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    child: const Text(
      "Save Changes",
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
),

const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}