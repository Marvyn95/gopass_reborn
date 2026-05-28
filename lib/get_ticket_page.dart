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
                      Icon(
                        Icons.navigation_rounded,
                        color: Colors.grey[600],
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        event['venue'],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[350],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    event['name'],
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Left Column - Going Now
                      Expanded(
                        flex: 2,
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
                                    Container(
                                      width: 2,
                                      height: 2,
                                      color: Colors.grey,
                                    ),
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
                                        color: const Color.fromRGBO(
                                          0,
                                          0,
                                          0,
                                          0.4,
                                        ),
                                      ),
                                    ),

                                    // Content
                                    Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          // Event Details
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: 8,
                                                            vertical: 4,
                                                          ),
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                          0xFFE63946,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              4,
                                                            ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Icon(
                                                            Icons.star,
                                                            color: Colors.white,
                                                            size: 10,
                                                          ),
                                                          SizedBox(width: 4),
                                                          Text(
                                                            'canon events',
                                                            style: TextStyle(
                                                              fontSize: 12,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 8),
                                              Row(
                                                children: List.generate(
                                                  5,
                                                  (index) => Row(
                                                    children: [
                                                      Icon(
                                                        Icons.currency_exchange,
                                                        color: Colors.white,
                                                        size: 14,
                                                      ),
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
                                                  Icon(
                                                    Icons.grade,
                                                    color: Colors.white,
                                                    size: 14,
                                                  ),
                                                  SizedBox(width: 4),
                                                  Text(
                                                    event['category'],
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  SizedBox(width: 24),
                                                  Icon(
                                                    Icons.access_time,
                                                    color: Colors.white,
                                                    size: 14,
                                                  ),
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
                                                  Icon(
                                                    Icons.people,
                                                    color: Colors.white,
                                                    size: 14,
                                                  ),
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

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                event['ticket_categories'].length,
                (index) =>
                Column(
                  children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Column(
                              children: List.generate(
                                3, // number of dots
                                (index) => Column(
                                  children: [
                                    SizedBox(height: 5),
                                    Container(
                                      width: 2,
                                      height: 2,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(Icons.document_scanner, color: Colors.grey[600]),
                            Column(
                              children: List.generate(
                                3, // number of dots
                                (index) => Column(
                                  children: [
                                    SizedBox(height: 5),
                                    Container(
                                      width: 2,
                                      height: 2,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              event['ticket_categories'][index]['ticket_type'],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.money_outlined, color: Colors.grey[500], size: 14),
                                SizedBox(width: 12),
                                Text(
                                  'UGX ${event['ticket_categories'][index]['price']}k /=',
                                  style: TextStyle(fontSize: 16, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(flex: 4, child: SizedBox()),
                    ],
                  ),
                  SizedBox(height: 15)
                  ]
                )

              )
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 250,
        height: 56,
        child: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: const Color(0xFFE63946),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          label: Text(
            'Proceed to Payment',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}




class IntFormField extends StatefulWidget {
  final int initialValue;
  final int min;
  final int max;

  const IntFormField({
    super.key,
    this.initialValue = 0,
    this.min = 0,
    this.max = 100,
  });

  @override
  // ignore: library_private_types_in_public_api
  _IntFormFieldState createState() => _IntFormFieldState();
}

class _IntFormFieldState extends State<IntFormField> {
  late int value;
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
    controller = TextEditingController(text: value.toString());
  }

  void _increment() {
    if (value < widget.max) {
      setState(() {
        value++;
        controller.text = value.toString();
      });
    }
  }

  void _decrement() {
    if (value > widget.min) {
      setState(() {
        value--;
        controller.text = value.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(icon: Icon(Icons.remove), onPressed: _decrement),
        SizedBox(
          width: 60,
          child: TextFormField(
            controller: controller,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8),
            ),
            onChanged: (text) {
              final parsed = int.tryParse(text);
              if (parsed != null &&
                  parsed >= widget.min &&
                  parsed <= widget.max) {
                setState(() => value = parsed);
              }
            },
          ),
        ),
        IconButton(icon: Icon(Icons.add), onPressed: _increment),
      ],
    );
  }
}
