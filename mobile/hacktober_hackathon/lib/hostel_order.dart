import 'package:flutter/material.dart';
import 'package:hacktober_hackathon/hostel_page1.dart';
import 'package:hacktober_hackathon/hostel_page2.dart';
import 'package:hacktober_hackathon/utils/google_map.dart';
import 'package:hacktober_hackathon/utils/setup.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HostelOrder extends StatefulWidget {
  const HostelOrder({super.key});

  @override
  State<HostelOrder> createState() => _HostelOrderState();
}

class _HostelOrderState extends State<HostelOrder> {
  int page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: const Icon(
          Icons.add,
          color: Colors.transparent,
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.bottomToTop,
                      duration: const Duration(milliseconds: 0),
                      reverseDuration: const Duration(milliseconds: 0),
                      child: const MapSample()));
            },
            child: const Icon(
              Icons.map_rounded,
              color: Colors.black,
              size: 28,
            ),
          ),
          const SizedBox(
            width: 15,
          )
        ],
        centerTitle: true,
        title: const Text(
          "Zero hunger",
          style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ListTile(
                contentPadding: EdgeInsets.only(left: 16),
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 30,
                  child: Center(
                    child: Icon(
                      Icons.person_rounded,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                ),
                title: Text(
                  "Hostel_name",
                  style: TextStyle(
                      color: Color.fromARGB(255, 58, 58, 58),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Hostel_id",
                  style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 58, 58, 58),
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 25.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange, width: 4),
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
                                image: AssetImage("images/h8.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            page = 1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            height: 50,
                            width: 44.w,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Center(
                              child: Text(
                                'Analytics',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            page = 2;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Container(
                            height: 50,
                            width: 44.w,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                border: Border.all(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    width: 2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Center(
                              child: Text(
                                'Previously',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              (page == 1)
                  ? HostelPage1()
                  : HostelPage2(
                      fn: () {
                        setState(() {
                          page = 2;
                        });
                      },
                    )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.bottomToTop,
                  duration: const Duration(milliseconds: 0),
                  reverseDuration: const Duration(milliseconds: 0),
                  child: const SetupOrganisation()));
        },
        backgroundColor: Colors.orange,
        child: Center(
          child: Icon(Icons.notes),
        ),
      ),
    );
  }
}
