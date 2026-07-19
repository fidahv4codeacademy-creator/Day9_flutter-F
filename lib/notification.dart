import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

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
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                /// Top Bar
                Row(
                  children: [

                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Color(0xff1565C0),
                          size: 18,
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),

                    const Text(
                      "Notifications",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1565C0),
                      ),
                    ),

                  ],
                ),

                const SizedBox(height: 30),

                const Text(
                  "Today's Updates",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Stay updated with important bus notifications.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 25),

                Expanded(
                  child: ListView(
                    children: [

                      _buildNotificationCard(
                        icon: Icons.play_circle_fill,
                        iconColor: Colors.green,
                        title: "Trip Started",
                        message: "Your morning trip has started successfully.",
                        time: "8:30 AM",
                      ),

                      const SizedBox(height: 15),

                      _buildNotificationCard(
                        icon: Icons.people,
                        iconColor: Colors.blue,
                        title: "Student Pickup",
                        message: "42 students have boarded the bus.",
                        time: "8:55 AM",
                      ),

                      const SizedBox(height: 15),

                      _buildNotificationCard(
                        icon: Icons.route,
                        iconColor: Colors.orange,
                        title: "Route Updated",
                        message: "Alternate route suggested due to road work.",
                        time: "9:05 AM",
                      ),

                      const SizedBox(height: 15),

                      _buildNotificationCard(
                        icon: Icons.traffic,
                        iconColor: Colors.red,
                        title: "Traffic Alert",
                        message: "Heavy traffic reported near Perumathura Junction.",
                        time: "9:12 AM",
                      ),

                      const SizedBox(height: 15),

                      _buildNotificationCard(
                        icon: Icons.check_circle,
                        iconColor: Colors.green,
                        title: "Trip Completed",
                        message: "Morning trip completed successfully.",
                        time: "9:40 AM",
                      ),

                    ],
                  ),
                ),

                ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationCard({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String message,
    required String time,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(.08),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          /// Notification Icon
          CircleAvatar(
            radius: 25,
            backgroundColor: iconColor.withOpacity(.15),
            child: Icon(
              icon,
              color: iconColor,
              size: 28,
            ),
          ),

          const SizedBox(width: 15),

          /// Notification Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [

                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xffEAF4FF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        time,
                        style: const TextStyle(
                          color: Color(0xff1565C0),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),

                  ],
                ),

                const SizedBox(height: 8),

                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    height: 1.4,
                  ),
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}