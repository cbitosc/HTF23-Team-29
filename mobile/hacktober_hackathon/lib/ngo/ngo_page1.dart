import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NgoPage1 extends StatelessWidget {
  const NgoPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Delivering',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 29, 29)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 190,
              width: 90.w,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(color: Colors.orange, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Item_name',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 29, 29, 29)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'category :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        const Text(
                          'Dry',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text(
                          'Quantity :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        const Text(
                          '30kgs',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'From :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'Hotel_name',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'To :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'Location_name',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: 35.w,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 0,
                                    blurRadius: 2)
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Center(
                            child: Text(
                              'Maps',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 35.w,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Center(
                            child: Text(
                              'Delivered',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Need of delivery',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 29, 29, 29)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 170,
              width: 90.w,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(color: Colors.orange, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Item_name',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 29, 29, 29)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'category :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        const Text(
                          'Dry',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text(
                          'Quantity :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        const Text(
                          '30kgs',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'From :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'Hotel_name',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'To :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'Location_name',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 190,
              width: 90.w,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(color: Colors.orange, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Item_name',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 29, 29, 29)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'category :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        const Text(
                          'Dry',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text(
                          'Quantity :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        const Text(
                          '30kgs',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'From :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'Hotel_name',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'To :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'Location_name',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: 35.w,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 0,
                                    blurRadius: 2)
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Center(
                            child: Text(
                              'Maps',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 35.w,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: const Center(
                            child: Text(
                              'Delivered',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 170,
              width: 90.w,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(color: Colors.orange, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Item_name',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 29, 29, 29)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'category :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        const Text(
                          'Dry',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text(
                          'Quantity :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        const Text(
                          '30kgs',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'From :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'Hotel_name',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'To :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'Location_name',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
