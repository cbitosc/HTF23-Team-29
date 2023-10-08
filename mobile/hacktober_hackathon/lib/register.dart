import 'package:flutter/material.dart';
import 'package:hacktober_hackathon/hostel_order.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  List<dynamic> users = ['anoop', 'rion', 'dinesh', 'anoop1', 'rion1'];
  TextEditingController c1 = TextEditingController();
  TextEditingController c2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 2.h,
            ),
            Container(
              height: 180,
              width: 180,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/h5.png"), fit: BoxFit.cover),
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(90))),
            ),
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              width: 90.w,
              height: 60,
              child: TextField(
                controller: c1,
                decoration: const InputDecoration(
                    fillColor: Color.fromARGB(120, 242, 240, 245),
                    filled: true,
                    // contentPadding: EdgeInsets.all(12),
                    hintText: 'Email',
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 81, 81, 82), width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 89, 89, 90), width: 2))),
              ),
            ),
            SizedBox(
              width: 90.w,
              height: 60,
              child: TextField(
                controller: c2,
                decoration: const InputDecoration(
                    fillColor: Color.fromARGB(120, 242, 240, 245),
                    filled: true,
                    // contentPadding: EdgeInsets.all(12),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontWeight: FontWeight.w500),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 81, 81, 82), width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 89, 89, 90), width: 2))),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              onTap: () {
                if (users.contains(c1.text)) {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 0),
                          reverseDuration: const Duration(milliseconds: 0),
                          child: const HostelOrder()));
                } else {
                  showDialog(
                      barrierColor: const Color.fromARGB(230, 38, 37, 37),
                      context: context,
                      builder: (context) => const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: AlertDialog(
                              contentPadding: EdgeInsets.all(40),
                              title: Text(
                                'Response status',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 198, 120, 2)),
                              ),
                              content: Text(
                                'OOPS ! username or password is incorrect',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.red),
                              ),
                              actions: [
                                Text(
                                  '😦',
                                  style: TextStyle(
                                      fontSize: 40, color: Colors.red),
                                ),
                              ],
                            ),
                          ));
                }
              },
              child: Container(
                height: 65,
                width: 90.w,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange, width: 3),
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
                padding: EdgeInsets.only(left: 10.w, right: 10.w),
                child: const Text(
                  'Please fill the email and password to get directed to landing page',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: 12.h,
            )
          ],
        ),
      )),
    );
  }
}
