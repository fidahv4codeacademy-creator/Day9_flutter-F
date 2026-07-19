import 'package:flutter/material.dart';

class TodayRouteScreen extends StatelessWidget {
  const TodayRouteScreen({super.key});

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

                /// App Bar
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
                          size: 18,
                          color: Color(0xff1565C0),
                        ),
                      ),
                    ),

                    const SizedBox(width: 15),

                    const Text(
                      "Today's Route",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1565C0),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                /// Route Information Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue.withOpacity(.08),
                        blurRadius: 15,
                        offset: const Offset(0, 6),
                      ),
                    ],
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: const [

                          CircleAvatar(
                            radius: 24,
                            backgroundColor: Color(0xffEAF4FF),
                            child: Icon(
                              Icons.directions_bus,
                              color: Color(0xff1565C0),
                              size: 28,
                            ),
                          ),

                          SizedBox(width: 15),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text(
                                "Bus No. 4",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                "Morning Trip",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),

                      const Row(
                        children: [

                          Icon(
                            Icons.schedule,
                            color: Colors.orange,
                          ),

                          SizedBox(width: 10),

                          Text(
                            "Departure : 07:30 AM",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      const Row(
                        children: [

                          Icon(
                            Icons.flag,
                            color: Colors.green,
                          ),

                          SizedBox(width: 10),

                          Text(
                            "Destination : MEC",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Bus Stops",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                Expanded(
                  child: ListView(
                    children: [

                      _buildStopTile(
                        "07:30 AM",
                        "Varkala",
                        Icons.trip_origin,
                        Colors.green,
                      ),

                      _buildStopTile(
                        "07:35 AM",
                        "Puthenchantha",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "07:40 AM",
                        "Vettoor",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "07:45 AM",
                        "Nedunganda",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "07:50 AM",
                        "Anjuthengu",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "07:55 AM",
                        "Chekkalavilakam Mukku",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "08:00 AM",
                        "Anathalavattom",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "08:05 AM",
                        "Thazhampally",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "08:10 AM",
                        "Perumathura",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "08:15 AM",
                        "Puthukurichy",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "08:20 AM",
                        "Marianadu",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "08:25 AM",
                        "Shanthipuram",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "08:35 AM",
                        "Vettuthura",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "08:35 AM",
                        "Puthenthope",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "08:40 AM",
                        "St. Andrews",
                        Icons.location_on,
                        Colors.blue,
                      ),

                      _buildStopTile(
                        "08:45 AM",
                        "Marian Engineering College (MEC)",
                        Icons.flag,
                        Colors.red,
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

  Widget _buildStopTile(
    String time,
    String stop,
    IconData icon,
    Color color,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(.08),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [

          CircleAvatar(
            radius: 24,
            backgroundColor: color.withOpacity(.15),
            child: Icon(
              icon,
              color: color,
              size: 26,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  stop,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  time,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),

              ],
            ),
          ),

          const Icon(
            Icons.chevron_right,
            color: Colors.grey,
          ),

        ],
      ),
    );
  }
}