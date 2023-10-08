import 'package:flutter/material.dart';
import 'package:hacktober_hackathon/cover_page.dart';
import 'package:hacktober_hackathon/ngo/ngo_coverpage.dart';
import 'package:hacktober_hackathon/utils/google_map.dart';
import 'package:hacktober_hackathon/utils/setup.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CoverPageTwo extends StatelessWidget {
  const CoverPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size(0, 20), child: AppBar()),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MapSample()));
              },
              child: const Text(
                'Zero hunger',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.orange),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const NgoCoverPage()));
              },
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 25.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.orange, width: 4),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("images/h1.jpg"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 80.w,
                        decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10))),
                        child: const Center(
                          child: Text(
                            'NGO',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6.w,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.bottomToTop,
                              duration: const Duration(milliseconds: 0),
                              reverseDuration: const Duration(milliseconds: 0),
                              child: const CoverPage()));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 25.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.orange, width: 4),
                              color: Color.fromARGB(255, 0, 0, 0),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10))),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage("images/h4.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 80.w,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                          child: const Center(
                            child: Text(
                              'Hostel',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: const Text(
                  'Please choose accordingly between the two option , one is ngo and another one is hostels',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )),
          ],
        ),
      ),
    );
  }
}
