import 'package:flutter/material.dart';

class TripHistoryScreen extends StatefulWidget {
  const TripHistoryScreen({super.key});

  @override
  State<TripHistoryScreen> createState() => _TripHistoryScreenState();
}

class _TripHistoryScreenState extends State<TripHistoryScreen> {
  final TextEditingController searchController = TextEditingController();

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
                      "Trip History",
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
                  "Previous Trips",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "View all completed trips and routes.",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 25),

                /// Search Bar
                TextField(
                  controller: searchController,

                  decoration: InputDecoration(
                    hintText: "Search by Date",

                    prefixIcon: const Icon(Icons.search),

                    filled: true,
                    fillColor: Colors.white,

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

                const SizedBox(height: 25),

                const Text(
                  "Recent Trips",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: ListView(
                    children: [

                      _buildTripCard(
                        date: "13 July 2026",
                        busNo: "KL 01 AB 1234",
                        route: "Marian College → Maryanad",
                        startTime: "08:30 AM",
                        endTime: "09:15 AM",
                        students: "42",
                      ),

                      const SizedBox(height: 15),

                      _buildTripCard(
                        date: "12 July 2026",
                        busNo: "KL 01 AB 1234",
                        route: "Marian College → Kazhakkoottam",
                        startTime: "08:25 AM",
                        endTime: "09:10 AM",
                        students: "40",
                      ),

                      const SizedBox(height: 15),

                      _buildTripCard(
                        date: "11 July 2026",
                        busNo: "KL 01 AB 1234",
                        route: "Marian College → Varkala",
                        startTime: "08:35 AM",
                        endTime: "09:20 AM",
                        students: "38",
                      ),

                      const SizedBox(height: 15),

                      _buildTripCard(
                        date: "10 July 2026",
                        busNo: "KL 01 AB 1234",
                        route: "Marian College → Menamkulam",
                        startTime: "08:40 AM",
                        endTime: "09:18 AM",
                        students: "41",
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

  Widget _buildTripCard({
    required String date,
    required String busNo,
    required String route,
    required String startTime,
    required String endTime,
    required String students,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            children: [

              const Icon(
                Icons.calendar_today,
                color: Color(0xff1565C0),
                size: 18,
              ),

              const SizedBox(width: 8),

              Text(
                date,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),

          const SizedBox(height: 15),

          Row(
            children: const [

              Icon(
                Icons.directions_bus,
                color: Color(0xff1565C0),
              ),

              SizedBox(width: 10),

              Text(
                "Bus Number",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),

            ],
          ),

          const SizedBox(height: 4),

          Text(
            busNo,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 15),

          Row(
            children: const [

              Icon(
                Icons.route,
                color: Colors.orange,
              ),

              SizedBox(width: 10),

              Text(
                "Route",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),

            ],
          ),

          const SizedBox(height: 4),

          Text(
            route,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),

          const SizedBox(height: 18),

          Row(
            children: [

              Expanded(
                child: Row(
                  children: [

                    const Icon(
                      Icons.login,
                      color: Colors.green,
                      size: 18,
                    ),

                    const SizedBox(width: 6),

                    Expanded(
                      child: Text(
                        startTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              Expanded(
                child: Row(
                  children: [

                    const Icon(
                      Icons.logout,
                      color: Colors.red,
                      size: 18,
                    ),

                    const SizedBox(width: 6),

                    Expanded(
                      child: Text(
                        endTime,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),

                  ],
                ),
              ),

            ],
          ),

          const SizedBox(height: 18),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: const Color(0xffEAF4FF),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [

                const Icon(
                  Icons.people,
                  color: Color(0xff1565C0),
                ),

                const SizedBox(width: 10),

                Text(
                  "$students Students Travelled",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1565C0),
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