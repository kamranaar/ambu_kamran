import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants/login_assets.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(CupertinoIcons.bars),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.keyboard_arrow_down_sharp),
          ),
        ],
      ),
      body: Container(
        color: Color.fromARGB(255, 82, 162, 206), // Added red background
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Image.asset(
                  LoginAssets.location,
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Container(
                child: SingleChildScrollView(
                  child: Image.asset(
                    LoginAssets.map,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: mq.width * 0.05,
                vertical: mq.height * 0.015,
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const HomeScreen(),
                  //   ),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 2,
                  shape: const StadiumBorder(),
                  backgroundColor: const Color.fromARGB(255, 201, 173, 144),
                ),
                icon: Image.asset(
                  LoginAssets.search,
                  height: mq.height * 0.045,
                ),
                label: const Text(
                  "NEAR RAJ NAGAR",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.3,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        alignment: Alignment.topLeft,
                        // color: const Color.fromARGB(255, 101, 136, 175),
                        child: Column(
                          // container123
                          children: [
                            Expanded(
                              flex: 8,
                              child: Column(
                                children: [
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // White background
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    icon: const Icon(Icons.location_on),
                                    label: const Text("Location 1"),
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // White background
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    icon: const Icon(Icons.location_on),
                                    label: const Text("Location 2"),
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white, // White background
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    icon: const Icon(Icons.location_on),
                                    label: const Text("Location 3"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Circular shape
                          border: Border.all(
                            color: Colors.black, // Border color
                            width: 2.0, // Border width
                          ),
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.call, // Call icon
                            color: Colors.red, // Icon color
                            size: 24.0, // Icon size
                          ),
                          onPressed: () {
                            // Handle the button action here
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: mq.width * 0.05,
                vertical: mq.height * 0.05,
              ),
              child: ElevatedButton(
                onPressed: () {
                  // CONFIRM button
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: const Color.fromARGB(255, 80, 104, 133),
                ),
                child: const Text(
                  "CONFIRM",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
