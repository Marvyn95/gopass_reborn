import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedTab = 'Upcoming Events';

  final List<Map<String, dynamic>> events = [
    {
      'organization_id': 'org_001',
      'name': 'Fuji Rock Festival 2019',
      'description': 'Rock & Electronic music festival',
      'category': 'Music',
      'image': 'assets/images/festival1.jpg',
      'date': '2024-08-15',
      'duration': '8 hours',
      'venue': 'Fuji Speedway',
      'start_time': '19:00',
      'end_time': '03:00',
      'creation_date': '2024-01-10',
      'updated_date': '2024-06-15',
      'ticket_categories': [
        {'ticket_type': 'PREMIUM', 'price': 150.0},
        {'ticket_type': 'VIP', 'price': 100.0},
      ],
      'total_ticket_number': 5000,
      'available_ticket_number': 1200,
    },
    {
      'organization_id': 'org_002',
      'name': 'Ultra Music Festival',
      'description': 'Electronic music festival',
      'category': 'Music',
      'image': 'assets/images/festival2.jpg',
      'date': '2024-08-20',
      'duration': '12 hours',
      'venue': 'Downtown Arena',
      'start_time': '19:00',
      'end_time': '07:00',
      'creation_date': '2024-02-05',
      'updated_date': '2024-06-20',
      'ticket_categories': [
        {'ticket_type': 'VIP', 'price': 120.0},
        {'ticket_type': 'STANDARD', 'price': 80.0},
      ],
      'total_ticket_number': 8000,
      'available_ticket_number': 2500,
    },
    {
      'organization_id': 'org_003',
      'name': 'Summerfest',
      'description': 'Electronic music festival',
      'category': 'Music',
      'image': 'assets/images/festival3.jpg',
      'date': '2024-08-25',
      'duration': '10 hours',
      'venue': 'Central Park',
      'start_time': '19:00',
      'end_time': '05:00',
      'creation_date': '2024-03-12',
      'updated_date': '2024-06-25',
      'ticket_categories': [
        {'ticket_type': 'VIP', 'price': 110.0},
        {'ticket_type': 'STANDARD', 'price': 70.0},
      ],
      'total_ticket_number': 6000,
      'available_ticket_number': 1800,
    },
    {
      'organization_id': 'org_004',
      'name': 'Jazz In The City',
      'description': 'Jazz & Blues music festival',
      'category': 'Music',
      'image': 'assets/images/festival4.jpg',
      'date': '2024-09-01',
      'duration': '6 hours',
      'venue': 'Concert Hall',
      'start_time': '20:00',
      'end_time': '02:00',
      'creation_date': '2024-04-01',
      'updated_date': '2024-07-01',
      'ticket_categories': [
        {'ticket_type': 'PREMIUM', 'price': 180.0},
        {'ticket_type': 'STANDARD', 'price': 90.0},
      ],
      'total_ticket_number': 3000,
      'available_ticket_number': 600,
    },
    {
      'organization_id': 'org_005',
      'name': 'Electric Dreams 2024',
      'description': 'Electronic music festival',
      'category': 'Business',
      'image': 'assets/images/festival5.jpg',
      'date': '2024-09-10',
      'duration': '9 hours',
      'venue': 'Beach Resort',
      'start_time': '21:00',
      'end_time': '06:00',
      'creation_date': '2024-05-20',
      'updated_date': '2024-07-10',
      'ticket_categories': [
        {'ticket_type': 'VIP', 'price': 130.0},
        {'ticket_type': 'STANDARD', 'price': 75.0},
      ],
      'total_ticket_number': 7000,
      'available_ticket_number': 2100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'GoPass',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 2),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/selfie.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search events...',
                hintStyle: TextStyle(color: Colors.grey[400]),
                prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.grey[300]!),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.black87),
                ),
                filled: true,
                fillColor: Colors.grey[50],
                contentPadding: EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),

          // Tab Selection

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
            child: Row(
              children: ['Upcoming Events', 'Past Events'].map((tab) {
                final isSelected = selectedTab == tab;
                return Padding(
                  padding: EdgeInsets.only(right: 24),
                  child: GestureDetector(
                    onTap: () => setState(() => selectedTab = tab),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tab,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: isSelected ? Colors.black87 : Colors.grey[350],
                          ),
                        ),
                        if (isSelected)
                          Container(
                            height: 2,
                            width: 20,
                            color: Colors.black87,
                            margin: EdgeInsets.only(top: 4),
                          ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          
          // // Events List Label
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 20),
          //   child: Text(
          //     'Events list',
          //     style: TextStyle(
          //       fontSize: 14,
          //       color: Colors.grey[500],
          //       fontWeight: FontWeight.w500,
          //     ),
          //   ),
          // ),
          
          SizedBox(height: 4),

          // Events Cards - Only this section scrolls
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: events.map((event) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 24),
                      child: EventCard(event: event),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {

  final Map<String, dynamic> event;

  const EventCard({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Column - Going Now
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Going',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFE63946),
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                'Now',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  letterSpacing: 0.5,
                ),
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('assets/images/selfie.jpg'),
                  ),
                  SizedBox(height: 2),
                  CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('assets/images/selfie.jpg'),
                  ),
                  SizedBox(height: 2),
                  CircleAvatar(
                    radius: 14,
                    backgroundImage: AssetImage('assets/images/selfie.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                width: 2,
                height: 8,
                color: Colors.grey,
              ),
              SizedBox(height: 5),
              Container(
                width: 2,
                height: 5,
                color: Colors.grey,
              ),
              SizedBox(height: 5),
              Container(
                width: 2,
                height: 8,
                color: Colors.grey,
              ),
              Text(
                '5',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFE63946),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 4),
        // Right Column - Event Card
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              // Card
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(event['image']),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // Dark overlay
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    ),
                    
                    // Content
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // Event Details
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFE63946),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    "canon events",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                event['name'],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  height: 1.2,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.grade, color: Colors.white, size: 14),
                                  SizedBox(width: 4),
                                  Text(
                                    event['category'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Icon(Icons.calendar_today, color: Colors.white, size: 14),
                                  SizedBox(width: 4),
                                  Text(
                                    event['date'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Icon(Icons.access_time, color: Colors.white, size: 14),
                                  SizedBox(width: 4),
                                  Text(
                                    event['start_time'],
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
