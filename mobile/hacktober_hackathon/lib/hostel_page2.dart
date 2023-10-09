import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HostelPage2 extends StatelessWidget {
  final Function fn;
  const HostelPage2({super.key, required this.fn});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Previous',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 29, 29, 29)),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 110,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          color: const Color.fromARGB(255, 38, 38, 38)),
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
                              'Status :',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 29, 29, 29)),
                            ),
                            Text(
                              'NGO_name',
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
                  height: 110,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          color: const Color.fromARGB(255, 38, 38, 38)),
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
                              'Status :',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 29, 29, 29)),
                            ),
                            Text(
                              'NGO_name',
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
                  height: 110,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          color: const Color.fromARGB(255, 38, 38, 38)),
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
                              'Status :',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 29, 29, 29)),
                            ),
                            Text(
                              'NGO_name',
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
                  height: 110,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          color: const Color.fromARGB(255, 38, 38, 38)),
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
                              'Status :',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 29, 29, 29)),
                            ),
                            Text(
                              'NGO_name',
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
                  height: 110,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          color: const Color.fromARGB(255, 38, 38, 38)),
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
                              'Status :',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 29, 29, 29)),
                            ),
                            Text(
                              'NGO_name',
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
                  height: 110,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      border: Border.all(
                          color: const Color.fromARGB(255, 38, 38, 38)),
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
                              'Status :',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 29, 29, 29)),
                            ),
                            Text(
                              'NGO_name',
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
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            right: 10,
            child: InkWell(
              onTap: () {
                fn();
              },
              child: Container(
                height: 50,
                width: 103,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.orange, width: 3),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Text(
                        'Back',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
