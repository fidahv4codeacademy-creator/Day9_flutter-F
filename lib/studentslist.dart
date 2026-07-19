import 'package:flutter/material.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({super.key});

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {

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

                /// Back Button
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
                      "Student List",
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
                  "Find Students",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Search students by name or register number.",
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
                    hintText: "Search Student",

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
                  "42 Students",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: ListView(
                    children: [

                      _buildStudentCard(
                        name: "Fida Sajeem",
                        regNo: "MEC24CS075",
                        stop: "Marakkadamukk",
                      ),

                      const SizedBox(height: 15),

                      _buildStudentCard(
                        name: "Krishna",
                        regNo: "MEC24CS110",
                        stop: "Cheruniyoor",
                      ),

                      const SizedBox(height: 15),

                      _buildStudentCard(
                        name: "Hridhya Suresh",
                        regNo: "MEC24CS088",
                        stop: "Perette",
                      ),

                      const SizedBox(height: 15),

                      _buildStudentCard(
                        name: "Hari",
                        regNo: "MEC24ME024",
                        stop: "Nilakkamukk",
                      ),

                      const SizedBox(height: 15),

                      _buildStudentCard(
                        name: "Aadil S.",
                        regNo: "MEC24CS005",
                        stop: "Kadakkavoor",
                      ),const SizedBox(height: 15),

                      _buildStudentCard(
                        name: "Fahad S.",
                        regNo: "MEC24CS022",
                        stop: "Perumathura",
                      ),
const SizedBox(height: 15),

                      _buildStudentCard(
                        name: "Anwar F.",
                        regNo: "MEC24CE075",
                        stop: "Maryanad",
                      ),

const SizedBox(height: 15),

                      _buildStudentCard(
                        name: "Aleesha",
                        regNo: "MEC24CS032",
                        stop: "Puthenthope",
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

  Widget _buildStudentCard({
    required String name,
    required String regNo,
    required String stop,
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
        children: [

          /// Avatar
          CircleAvatar(
            radius: 28,
            backgroundColor: const Color(0xffE3F2FD),
            child: Text(
              name[0],
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff1565C0),
              ),
            ),
          ),

          const SizedBox(width: 18),

          /// Student Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  "Reg No : $regNo",
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),

                const SizedBox(height: 4),

                Row(
                  children: [

                    const Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 18,
                    ),

                    const SizedBox(width: 5),

                    Expanded(
                      child: Text(
                        stop,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black87,
                        ),
                      ),
                    ),

                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}