import 'package:flutter/material.dart';

class GetTicketPage extends StatelessWidget {
  final Map<String, dynamic> event;
  
  const GetTicketPage({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        surfaceTintColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black87),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Buy Tickets Here',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        centerTitle: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20, top: 5),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/selfie.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.navigation_rounded, color: Colors.grey[600], size: 16),
                      const SizedBox(width: 4),
                      Text(
                        event['venue'],
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[350]),
                      ),
                    ],
                  ),
                  Text(
                    event['name'],
                    style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Left Column - Going Now
                          Expanded(
                            flex: 1,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '2',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xFFE63946),
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Text(
                                  'Nov',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                Column(
                                  children: List.generate(
                                  28, // number of dots
                                    (index) => Column(
                                      children: [
                                        SizedBox(height: 5),
                                        Container(width: 2, height: 2, color: Colors.grey),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                // Text(
                                //   '5',
                                //   style: TextStyle(
                                //     fontSize: 11,
                                //     fontWeight: FontWeight.bold,
                                //     color: const Color(0xFFE63946),
                                //   ),
                                // ),
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
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 280,
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
                                                  Row(
                                                    children: [
                                                    Align(
                                                      alignment: Alignment.centerLeft,
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                                        decoration: BoxDecoration(
                                                          color: const Color(0xFFE63946),
                                                          borderRadius: BorderRadius.circular(4),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize: MainAxisSize.min,
                                                          children: [
                                                            Icon(Icons.star, color: Colors.white, size: 10),
                                                            SizedBox(width: 4),
                                                            Text(
                                                              'canon events',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    )                                                    
                                                    ]
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(
                                                    children: List.generate(
                                                      5,
                                                      (index) => 
                                                      Row(
                                                        children: [
                                                          Icon(Icons.currency_exchange, color: Colors.white, size: 14),
                                                          SizedBox(width: 2),
                                                          Text(
                                                            '50k',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              color: Colors.white,
                                                            ),
                                                          ),
                                                          SizedBox(width: 6),
                                                          Text(
                                                            '-',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              color: Colors.white,
                                                            ),
                                                          ),
                                                          SizedBox(width: 6),
                                                        ],
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
                                                      SizedBox(width: 24),
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
                                                  SizedBox(height: 8),
                                                  Row(
                                                    children: [
                                                      Icon(Icons.people, color: Colors.white, size: 14),
                                                      SizedBox(width: 12),
                                                      Text(
                                                        "101 going",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                      SizedBox(width: 12),
                                                      Text(
                                                        "250 interested",
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
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 18),
                        ],
                      ),
                    const SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Icon( Icons.calendar_today, color: Colors.grey[600]),

                ),
                Expanded(
                  flex: 5,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Date & Time',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.people, color: Colors.grey[500], size: 14),
                            SizedBox(width: 12),
                            Text(
                              "Fri, 2nd May, 2026",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 12),
                            Text(
                              "20:00 hours",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
                Expanded(
                  flex: 4,
                  child: SizedBox()
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Icon( Icons.qr_code, color: Colors.grey[600]),

                ),
                Expanded(
                  flex: 8,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "Get ready for an unforgettable experience. We are bringing together a massive lineup of your favorite artists, chart-topping headliners, and elite performers for a one-of-a-kind event. The countdown begins now—don't miss your chance to be part of the magic!"  ,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
                Expanded(
                  flex: 1,
                  child: SizedBox()
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Icon( Icons.qr_code, color: Colors.grey[600]),

                ),
                Expanded(
                  flex: 5,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get Your Ticket',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.people, color: Colors.grey[500], size: 14),
                            SizedBox(width: 12),
                            Text(
                              "101 going",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                            SizedBox(width: 12),
                            Text(
                              "250 interested",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                ),
                Expanded(
                  flex: 4,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 22),
                    ),
                    onPressed: () {},
                    child: Text('Book Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ),
                SizedBox(width: 14)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

