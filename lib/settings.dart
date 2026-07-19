import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAF7FF),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: const Color(0xff1565C0),
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              _settingTile(
                icon: Icons.person_outline,
                title: "Edit Profile",
                subtitle: "Update your personal details",
                onTap: () {},
              ),

              const SizedBox(height: 15),

              _settingTile(
                icon: Icons.lock_outline,
                title: "Change Password",
                subtitle: "Change your login password",
                onTap: () {},
              ),

              const SizedBox(height: 15),

              _settingTile(
                icon: Icons.language,
                title: "Language",
                subtitle: "English",
                onTap: () {},
              ),

              const SizedBox(height: 15),

              _settingTile(
                icon: Icons.help_outline,
                title: "Help & Support",
                subtitle: "Contact support",
                onTap: () {},
              ),

              const SizedBox(height: 15),

              _settingTile(
                icon: Icons.info_outline,
                title: "About App",
                subtitle: "CampusRide Driver v1.0",
                onTap: () {},
              ),

            ],
          ),
        ),
      ),
    );
  }
}

Widget _settingTile({
  required IconData icon,
  required String title,
  required String subtitle,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    borderRadius: BorderRadius.circular(18),
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [

          CircleAvatar(
            radius: 24,
            backgroundColor: const Color(0xffEAF4FF),
            child: Icon(
              icon,
              color: const Color(0xff1565C0),
              size: 24,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),

              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.grey,
          ),

        ],
      ),
    ),
  );
}