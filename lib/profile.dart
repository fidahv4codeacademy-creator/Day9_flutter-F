import 'package:day9app/editprofile.dart';
import 'package:day9app/settings.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              padding: const EdgeInsets.all(20),

              child: Column(
                children: [

                  /// Top App Bar
                  Row(
                    children: [

                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(.10),
                              blurRadius: 10,
                            ),
                          ],
                        ),

                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 20,
                            color: Color(0xff1565C0),
                          ),
                        ),
                      ),

                      const Spacer(),

                      const Text(
                        "My Profile",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const Spacer(),

                      GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsScreen(),
      ),
    );
  },
  child: Container(
    height: 45,
    width: 45,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(0.10),
          blurRadius: 10,
        ),
      ],
    ),
    child: const Icon(
      Icons.settings,
      color: Color(0xff1565C0),
    ),
  ),
),

                    ],
                  ),

                  const SizedBox(height: 35),

                  /// Profile Picture
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [

                      Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(.20),
                              blurRadius: 15,
                            ),
                          ],
                        ),

                        child: const CircleAvatar(
                          radius: 55,
                          backgroundColor: Color(0xff1565C0),
                          child: Icon(
                            Icons.person,
                            size: 70,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),

                        child: const Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  const Text(
                    "Mr. Ewaan",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    "Driver ID : DR1025",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 15),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 18,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25),
                    ),

                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 10,
                        ),

                        SizedBox(width: 8),

                        Text(
                          "ONLINE ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                  /// Driver Information Card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(.08),
                          blurRadius: 12,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [

                        _buildInfoTile(
                          Icons.phone,
                          "Phone Number",
                          "+91 9876543210",
                        ),

                        const Divider(),

                        _buildInfoTile(
                          Icons.email_outlined,
                          "Email",
                          "ewaan123@gmail.com",
                        ),

                        const Divider(),

                        _buildInfoTile(
                          Icons.directions_bus,
                          "Bus Number",
                          "KL 01 AB 1234",
                        ),

                        const Divider(),

                        _buildInfoTile(
                          Icons.route,
                          "Assigned Route",
                          "College → Varkala",
                        ),

                        const Divider(),

                        _buildInfoTile(
                          Icons.star,
                          "Driver Rating",
                          "4.9 / 5.0",
                        ),

                      ],
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// Statistics Title
                  const Text(
                    "Today's Summary",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 18),

                  Row(
                    children: [

                      Expanded(
                        child: _buildStatCard(
                          "42",
                          "Students",
                          Icons.people,
                          Colors.green,
                        ),
                      ),

                      const SizedBox(width: 15),

                      Expanded(
                        child: _buildStatCard(
                          "18",
                          "Stops",
                          Icons.location_on,
                          Colors.red,
                        ),
                      ),

                    ],
                  ),

                  const SizedBox(height: 15),

                  Row(
                    children: [

                      Expanded(
                        child: _buildStatCard(
                          "256",
                          "Trips",
                          Icons.history,
                          Colors.orange,
                        ),
                      ),

                      const SizedBox(width: 15),

                      Expanded(
                        child: _buildStatCard(
                          "98%",
                          "Attendance",
                          Icons.check_circle,
                          Colors.blue,
                        ),
                      ),

                    ],
                  ),

                  const SizedBox(height: 30),
                  /// Edit Profile Button
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: ElevatedButton.icon(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>EditProfileScreen()));},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff1565C0),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Edit Profile",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  /// Logout Button
                  SizedBox(
                    width: double.infinity,
                    height: 58,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.red,
                      ),
                      label: const Text(
                        "Logout",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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

  Widget _buildInfoTile(
      IconData icon,
      String title,
      String value,
      ) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: const Color(0xffEAF4FF),
        child: Icon(
          icon,
          color: const Color(0xff1565C0),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        value,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildStatCard(
      String value,
      String title,
      IconData icon,
      Color color,
      ) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(.08),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [

          CircleAvatar(
            radius: 24,
            backgroundColor: color.withOpacity(.15),
            child: Icon(
              icon,
              color: color,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            title,
            style: const TextStyle(
              color: Colors.black54,
            ),
          ),

        ],
      ),
    );
  }
}