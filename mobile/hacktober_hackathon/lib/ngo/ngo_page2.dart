import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NgoPage2 extends StatelessWidget {
  final TextEditingController c1;
  final TextEditingController c2;
  final TextEditingController c3;
  const NgoPage2(
      {super.key, required this.c1, required this.c2, required this.c3});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                showDialog(
                    barrierColor: const Color.fromARGB(200, 22, 22, 22),
                    context: context,
                    builder: ((context) => StatefulBuilder(
                          builder: (BuildContext context,
                              void Function(void Function()) setState) {
                            return AlertDialog(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(17.0))),
                              insetPadding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              content: SizedBox(
                                height: 330,
                                width: 274,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Icon(
                                            Icons.close,
                                            color: Colors.orange,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 250,
                                      height: 55,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            fillColor: Color.fromARGB(
                                                120, 242, 240, 245),
                                            filled: true,
                                            // contentPadding: EdgeInsets.all(12),
                                            hintText: 'Location',
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.w500),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16)),
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 123, 123, 124),
                                                    width: 2)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16)),
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 137, 137, 138),
                                                    width: 2))),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 250,
                                      height: 55,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            fillColor: Color.fromARGB(
                                                120, 242, 240, 245),
                                            filled: true,
                                            // contentPadding: EdgeInsets.all(12),
                                            hintText: 'Quantity',
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.w500),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16)),
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 81, 81, 82),
                                                    width: 2)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16)),
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 89, 89, 90),
                                                    width: 2))),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 250,
                                      height: 55,
                                      child: TextField(
                                        decoration: InputDecoration(
                                            fillColor: Color.fromARGB(
                                                120, 242, 240, 245),
                                            filled: true,
                                            // contentPadding: EdgeInsets.all(12),
                                            hintText: 'Deliver before',
                                            hintStyle: TextStyle(
                                                fontWeight: FontWeight.w500),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16)),
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 81, 81, 82),
                                                    width: 2)),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(16)),
                                                borderSide: BorderSide(
                                                    color: Color.fromARGB(
                                                        255, 89, 89, 90),
                                                    width: 2))),
                                      ),
                                    ),
                                    Container(
                                      width: 250,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.orange,
                                          border: Border.all(
                                              color: Colors.orange, width: 3),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(16))),
                                      child: const Center(
                                        child: Text(
                                          'Add',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )));
              },
              child: Container(
                height: 7.h,
                width: 90.w,
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'On the way',
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
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(color: Colors.black, width: 2),
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
                    const Row(
                      children: [
                        Text(
                          'status :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          '15 min left',
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
            const Text(
              'Pickup Pending',
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
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border.all(color: Colors.black, width: 2),
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
                    const Row(
                      children: [
                        Text(
                          'status :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'not picked',
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
                  border: Border.all(color: Colors.black, width: 2),
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
                    const Row(
                      children: [
                        Text(
                          'status :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'pending',
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
                  border: Border.all(color: Colors.black, width: 2),
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
                    const Row(
                      children: [
                        Text(
                          'status :',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 29, 29, 29)),
                        ),
                        Text(
                          'pending',
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
