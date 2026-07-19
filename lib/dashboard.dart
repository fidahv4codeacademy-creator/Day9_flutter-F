import 'package:day9app/notification.dart';
import 'package:day9app/profile.dart';
import 'package:day9app/studentslist.dart';
import 'package:day9app/todaystrip.dart';
import 'package:day9app/triphistory.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /// Top Row
                  Row(
                    children: [

                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(.15),
                              blurRadius: 12,
                            ),
                          ],
                        ),

                        child: const Icon(
                          Icons.person,
                          color: Color(0xff1565C0),
                          size: 34,
                        ),
                      ),

                      const SizedBox(width: 15),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            Text(
                              "Good Morning 👋",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                              ),
                            ),

                            SizedBox(height: 5),

                            Text(
                              "Mr.Ewaan",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),
                      ),

                      GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NotificationScreen(),
      ),
    );
  },
  child: Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.withOpacity(.12),
          blurRadius: 10,
        ),
      ],
    ),
    child: const Icon(
      Icons.notifications_none,
      color: Color(0xff1565C0),
    ),
  ),
),
                    ],
                  ),

                  const SizedBox(height: 35),

                  /// Driver Card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(22),

                    decoration: BoxDecoration(
                      color: const Color(0xff1565C0),
                      borderRadius: BorderRadius.circular(28),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(.35),
                          blurRadius: 18,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [

                        const Text(
                          "Today's Bus",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 15,
                          ),
                        ),

                        const SizedBox(height: 10),

                        const Text(
                          "KL 01 AB 1234",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Row(
                          children: [

                            Container(
                              padding:
                                  const EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 8,
                              ),

                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius:
                                    BorderRadius.circular(30),
                              ),

                              child: const Row(
                                children: [

                                  Icon(
                                    Icons.circle,
                                    color: Colors.white,
                                    size: 10,
                                  ),

                                  SizedBox(width: 6),

                                  Text(
                                    "ONLINE",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight:
                                          FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const Spacer(),

                            const Icon(
                              Icons.directions_bus,
                              color: Colors.white,
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                  /// Start Trip Button
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton.icon(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),

                      icon: const Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                        size: 28,
                      ),

                      label: const Text(
                        "Start Today's Trip",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  /// Today's Route Card
                  GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TodayRouteScreen(),
      ),
    );
  },

                  child: Row(
                      children: [

                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: const Color(0xffEAF4FF),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.route,
                            color: Color(0xff1565C0),
                            size: 30,
                          ),
                        ),

                        const SizedBox(width: 15),

                        const Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [

                              Text(
                                "Today's Route",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 6),

                              Text(
                                "College → Kazhakkoottam → Marian Educity",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Today's Trip Summary
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(.08),
                          blurRadius: 12,
                        ),
                      ],
                    ),

                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceAround,

                      children: [

                        Column(
                          children: const [

                            Icon(
                              Icons.location_on,
                              color: Color(0xff1565C0),
                            ),

                            SizedBox(height: 8),

                            Text(
                              "18",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),

                            Text("Stops"),
                          ],
                        ),

                        Column(
                          children: const [

                            Icon(
                              Icons.people,
                              color: Colors.green,
                            ),

                            SizedBox(height: 8),

                            Text(
                              "42",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),

                            Text("Students"),
                          ],
                        ),

                        Column(
                          children: const [

                            Icon(
                              Icons.access_time,
                              color: Colors.orange,
                            ),

                            SizedBox(height: 8),

                            Text(
                              "8:30",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),

                            Text("Start"),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                  const Text(
                    "Quick Actions",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 18),

                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 18,
                    childAspectRatio: 1.05,

                    children: [

                      _buildActionCard(
                        icon: Icons.location_on,
                        title: "Live\nTracking",
                        color: Colors.red,
                        onTap: () {},
                      ),

                      _buildActionCard(
                        icon: Icons.people,
                        title: "Student\nList",
                        color: Colors.green,
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentListScreen()));},
                      ),

                      _buildActionCard(
                        icon: Icons.route,
                        title: "Today's\nRoute",
                        color: Colors.orange,
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>TodayRouteScreen()));},
                      ),

                      _buildActionCard(
                        icon: Icons.history,
                        title: "Trip\nHistory",
                        color: Colors.deepPurple,
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>TripHistoryScreen()));},
                      ),

                      _buildActionCard(
                        icon: Icons.person,
                        title: "Profile",
                        color: Colors.blue,
                        onTap: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProfileScreen(),
    ),
  );
},
                      ),

                      _buildActionCard(
                        icon: Icons.logout,
                        title: "Logout",
                        color: Colors.redAccent,
                        onTap: () {},
                      ),

                    ],
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

  Widget _buildActionCard({
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(.08),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
              radius: 28,
              backgroundColor: color.withOpacity(.12),
              child: Icon(
                icon,
                color: color,
                size: 30,
              ),
            ),

            const SizedBox(height: 15),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),

          ],
        ),
      ),
    );
  }
}