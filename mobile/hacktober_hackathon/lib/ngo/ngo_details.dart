import 'package:flutter/material.dart';
import 'package:hacktober_hackathon/ngo/ngo_signin.dart';
import 'package:hacktober_hackathon/ngo/ngo_signin1.dart';
import 'package:hacktober_hackathon/signin.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NgoDetails extends StatelessWidget {
  const NgoDetails({super.key});

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
              child: const TextField(
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(120, 242, 240, 245),
                    filled: true,
                    // contentPadding: EdgeInsets.all(12),
                    hintText: 'NGO name',
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
              child: const TextField(
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(120, 242, 240, 245),
                    filled: true,
                    // contentPadding: EdgeInsets.all(12),
                    hintText: 'Contact',
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
              child: const TextField(
                decoration: InputDecoration(
                    fillColor: Color.fromARGB(120, 242, 240, 245),
                    filled: true,
                    // contentPadding: EdgeInsets.all(12),
                    hintText: 'Location',
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
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: const Duration(milliseconds: 0),
                        reverseDuration: const Duration(milliseconds: 0),
                        child: const NgoSignIn()));
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
                    'Next',
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
                  'Please fill the required options to get better service , this will be useful for us and You !!',
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
