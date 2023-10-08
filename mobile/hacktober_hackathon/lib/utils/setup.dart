import 'package:flutter/material.dart';
import 'package:hacktober_hackathon/utils/text_field.dart';
import 'package:intl/intl.dart';

import 'package:proste_bezier_curve/proste_bezier_curve.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SetupOrganisation extends StatefulWidget {
  const SetupOrganisation({super.key});

  @override
  State<SetupOrganisation> createState() => _SetupOrganisationState();
}

class _SetupOrganisationState extends State<SetupOrganisation> {
  final yourScrollController = ScrollController();

  TextEditingController Departmentcont = TextEditingController();
  TextEditingController employeecont = TextEditingController();
  TextEditingController setemployeecont = TextEditingController();
  TextEditingController managercont = TextEditingController();
  TextEditingController setmanagercont = TextEditingController();
  TextEditingController admincont = TextEditingController();
  TextEditingController setadmincont = TextEditingController();
  TextEditingController setshiftnamecont = TextEditingController();
  TextEditingController setdepartmentcont = TextEditingController();
  TextEditingController changeshiftnamecont = TextEditingController();
  TextEditingController changedepartmentcont = TextEditingController();
  TextEditingController departmenttextcont = TextEditingController();
  String addroleEmployee = 'Employee';
  String addroleManager = 'Manager';
  String addroleAdmin = 'Admin';
  String fromtime = '9:00 AM';
  String totime = '9:00 AM';
  String shiftname = 'Shift1';
  String departmentname = 'shampooo';
  List<dynamic> departmentList = [
    'Dish1',
    'Dish2',
    'Dish3',
    'Dish4',
    'Dish5',
    'Dish6',
  ];
  List<dynamic> shiftList = [
    {'shift': 'shift1', 'fromtime': '9:00 am', 'totime': '9:00pm'},
  ];

  @override
  void dispose() {
    super.dispose();
    yourScrollController.dispose();
    Departmentcont.dispose();
    employeecont.dispose();
    setemployeecont.dispose();
    managercont.dispose();
    setmanagercont.dispose();
    admincont.dispose();
    setadmincont.dispose();
    setshiftnamecont.dispose();
    setdepartmentcont.dispose();
    changeshiftnamecont.dispose();
    changedepartmentcont.dispose();
    departmenttextcont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: const Icon(
          Icons.add,
          color: Colors.transparent,
        ),
        centerTitle: true,
        title: const Text(
          "List of items",
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: yourScrollController,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 17,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.w, right: 5.w),
                        child: Container(
                            padding: const EdgeInsets.only(
                                left: 8, top: 6, bottom: 8, right: 4),
                            // height: height,
                            // width: 360,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(64, 0, 0, 0),
                                      blurRadius: 4.0,
                                      offset: Offset(0, 4))
                                ],
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                border:
                                    Border.all(width: 3, color: Colors.orange)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ////////////////////////////////////////////////////////
                                    SizedBox(
                                      height: 60.h,
                                      width: 65.w,
                                      child: Center(
                                        child: GridView.builder(
                                          shrinkWrap: true,
                                          padding: const EdgeInsets.all(0),
                                          itemCount: departmentList.length,
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisSpacing: 1,
                                                  mainAxisSpacing: 1,
                                                  crossAxisCount: 1,
                                                  childAspectRatio: 17 / 5),
                                          itemBuilder: (context, i) {
                                            return InkWell(
                                              onTap: () {
                                                showDialog(
                                                    barrierColor:
                                                        const Color.fromARGB(
                                                            200, 22, 22, 22),
                                                    context: context,
                                                    builder:
                                                        ((context) =>
                                                            StatefulBuilder(
                                                              builder: (BuildContext
                                                                      context,
                                                                  void Function(
                                                                          void
                                                                              Function())
                                                                      setState) {
                                                                return AlertDialog(
                                                                  shape: const RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(17.0))),
                                                                  insetPadding:
                                                                      const EdgeInsets
                                                                              .only(
                                                                          left:
                                                                              20,
                                                                          right:
                                                                              20),
                                                                  content:
                                                                      SizedBox(
                                                                    height: 180,
                                                                    width: 294,
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceAround,
                                                                      children: [
                                                                        const Text(
                                                                          'Edit Item',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                16,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            color:
                                                                                Colors.black,
                                                                          ),
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              10,
                                                                        ),
                                                                        TextFil(
                                                                          readonly:
                                                                              false,
                                                                          conPadding:
                                                                              7,
                                                                          borderwidth:
                                                                              1,
                                                                          cont:
                                                                              changedepartmentcont,
                                                                          hintText:
                                                                              'Item Name',
                                                                          maxline:
                                                                              1,
                                                                          borderradius:
                                                                              80,
                                                                          fieldWidth:
                                                                              232,
                                                                          textSize:
                                                                              14,
                                                                        ),
                                                                        const SizedBox(
                                                                          height:
                                                                              15,
                                                                        ),
                                                                        InkWell(
                                                                          onTap:
                                                                              () {
                                                                            setState(() {
                                                                              departmentList[i] = changedepartmentcont.text;
                                                                            });
                                                                            changedepartmentcont.text =
                                                                                '';

                                                                            Navigator.pop(context);
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                31,
                                                                            width:
                                                                                116,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              border: Border.all(color: Colors.orange, width: 2),
                                                                              borderRadius: const BorderRadius.all(Radius.circular(80)),
                                                                              color: Colors.orange,
                                                                            ),
                                                                            child:
                                                                                const Center(
                                                                              child: InkWell(
                                                                                child: Text(
                                                                                  'Change',
                                                                                  style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
                                                                                ),
                                                                              ),
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
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 4, bottom: 4),
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              39,
                                                              148,
                                                              148),
                                                      borderRadius:
                                                          const BorderRadius
                                                                  .all(
                                                              Radius.circular(
                                                                  10)),
                                                      border: Border.all(
                                                          width: 1,
                                                          color: Colors.black)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Expanded(
                                                        child: SizedBox(
                                                          // width: 80,
                                                          child: Text(
                                                            departmentList[i],
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 25,
                                                        child: IconButton(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(0),
                                                            onPressed: () {
                                                              setState(() {
                                                                departmentList
                                                                    .removeAt(
                                                                        i);
                                                              });
                                                            },
                                                            icon: const Icon(
                                                              Icons.close,
                                                              size: 20,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255),
                                                            )),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        padding: const EdgeInsets.all(0),
                                        onPressed: () {
                                          showDialog(
                                              barrierColor:
                                                  const Color.fromARGB(
                                                      200, 22, 22, 22),
                                              context: context,
                                              builder: ((context) =>
                                                  StatefulBuilder(
                                                    builder: (BuildContext
                                                            context,
                                                        void Function(
                                                                void Function())
                                                            setState) {
                                                      return AlertDialog(
                                                        shape: const RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(
                                                                        17.0))),
                                                        insetPadding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 20,
                                                                right: 20),
                                                        content: SizedBox(
                                                          height: 180,
                                                          width: 294,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              const Text(
                                                                'Add New Item',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize: 16,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  color: Colors
                                                                      .black,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                height: 10,
                                                              ),
                                                              TextFil(
                                                                readonly: false,
                                                                conPadding: 7,
                                                                borderwidth: 1,
                                                                cont:
                                                                    setdepartmentcont,
                                                                hintText:
                                                                    'Item Name',
                                                                maxline: 1,
                                                                borderradius:
                                                                    80,
                                                                fieldWidth: 232,
                                                                textSize: 14,
                                                              ),
                                                              const SizedBox(
                                                                height: 15,
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  setState(() {
                                                                    departmentList.insert(
                                                                        0,
                                                                        setdepartmentcont
                                                                            .text);
                                                                  });

                                                                  setdepartmentcont
                                                                      .text = '';
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child:
                                                                    Container(
                                                                  height: 31,
                                                                  width: 116,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .orange,
                                                                        width:
                                                                            2),
                                                                    borderRadius: const BorderRadius
                                                                            .all(
                                                                        Radius.circular(
                                                                            80)),
                                                                    color: Colors
                                                                        .orange,
                                                                  ),
                                                                  child:
                                                                      const Center(
                                                                    child: Text(
                                                                      'Confirm',
                                                                      style: TextStyle(
                                                                          fontSize:
                                                                              14,
                                                                          color: Colors
                                                                              .white,
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
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
                                        icon: const Icon(
                                          Icons.add_circle_outline,
                                          size: 27,
                                          color: Colors.orange,
                                        ))
                                  ],
                                ),
                                const Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'all items',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.orange,
                                        ),
                                      )
                                    ])
                              ],
                            )),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      InkWell(
                        onTap: () {
                          showDialog(
                              barrierColor:
                                  const Color.fromARGB(230, 38, 37, 37),
                              context: context,
                              builder: (context) => const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: AlertDialog(
                                      contentPadding: EdgeInsets.all(40),
                                      title: Text(
                                        'Data Status',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(
                                                255, 198, 120, 2)),
                                      ),
                                      content: Text(
                                        'your data has been submitted',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      actions: [
                                        Icon(
                                          Icons.verified,
                                          size: 40,
                                          color: Colors.green,
                                        )
                                      ],
                                    ),
                                  ));
                        },
                        child: Container(
                          height: 60,
                          width: 90.w,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              border:
                                  Border.all(color: Colors.orange, width: 3),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16))),
                          child: const Center(
                            child: Text(
                              'Submit your data',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),

                      // const SizedBox(
                      //   height: 10,
                      // ),
                      // Container(
                      //     padding: const EdgeInsets.only(
                      //         left: 4, top: 4, bottom: 4, right: 4),
                      //     width: 336,
                      //     decoration: BoxDecoration(
                      //         color: Colors.white,
                      //         boxShadow: const [
                      //           BoxShadow(
                      //               color: Color.fromARGB(64, 0, 0, 0),
                      //               blurRadius: 4.0,
                      //               offset: Offset(0, 4))
                      //         ],
                      //         borderRadius:
                      //             const BorderRadius.all(Radius.circular(15)),
                      //         border:
                      //             Border.all(width: 1, color: Colors.black)),
                      //     child: Column(
                      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Row(
                      //           crossAxisAlignment: CrossAxisAlignment.center,
                      //           children: [
                      //             SizedBox(
                      //               height: 108,
                      //               width: 210,
                      //               child: Center(
                      //                 child: GridView.builder(
                      //                   shrinkWrap: true,
                      //                   itemCount: shiftList.length,
                      //                   padding: const EdgeInsets.all(0),
                      //                   gridDelegate:
                      //                       const SliverGridDelegateWithFixedCrossAxisCount(
                      //                           crossAxisSpacing: 2,
                      //                           mainAxisSpacing: 2,
                      //                           crossAxisCount: 2,
                      //                           childAspectRatio: 12 / 6),
                      //                   ///////////////////////// /////////////////////////////////////////////////////////////////////////////////////////////////
                      //                   itemBuilder: (context, i) {
                      //                     return InkWell(
                      //                       onTap: () {
                      //                         showDialog(
                      //                             barrierColor:
                      //                                 const Color.fromARGB(
                      //                                     200, 22, 22, 22),
                      //                             context: context,
                      //                             builder:
                      //                                 ((context) =>
                      //                                     StatefulBuilder(
                      //                                       builder: (BuildContext
                      //                                               context,
                      //                                           void Function(
                      //                                                   void
                      //                                                       Function())
                      //                                               setState) {
                      //                                         return AlertDialog(
                      //                                           shape: const RoundedRectangleBorder(
                      //                                               borderRadius:
                      //                                                   BorderRadius.all(
                      //                                                       Radius.circular(17.0))),
                      //                                           insetPadding:
                      //                                               const EdgeInsets
                      //                                                       .only(
                      //                                                   left:
                      //                                                       20,
                      //                                                   right:
                      //                                                       20),
                      //                                           content:
                      //                                               SizedBox(
                      //                                             height: 180,
                      //                                             width: 294,
                      //                                             child:
                      //                                                 Column(
                      //                                               mainAxisAlignment:
                      //                                                   MainAxisAlignment
                      //                                                       .spaceBetween,
                      //                                               crossAxisAlignment:
                      //                                                   CrossAxisAlignment
                      //                                                       .center,
                      //                                               children: [
                      //                                                 const Text(
                      //                                                   'Edit Shift',
                      //                                                   style:
                      //                                                       TextStyle(
                      //                                                     fontSize:
                      //                                                         16,
                      //                                                     fontWeight:
                      //                                                         FontWeight.w500,
                      //                                                     color:
                      //                                                         Colors.black,
                      //                                                   ),
                      //                                                 ),
                      //                                                 TextFil(
                      //                                                   readonly:
                      //                                                       false,
                      //                                                   conPadding:
                      //                                                       7,
                      //                                                   borderwidth:
                      //                                                       1,
                      //                                                   cont:
                      //                                                       changeshiftnamecont,
                      //                                                   hintText:
                      //                                                       'Shift Name',
                      //                                                   maxline:
                      //                                                       1,
                      //                                                   borderradius:
                      //                                                       80,
                      //                                                   fieldWidth:
                      //                                                       232,
                      //                                                   textSize:
                      //                                                       14,
                      //                                                 ),
                      //                                                 SizedBox(
                      //                                                   width:
                      //                                                       232,
                      //                                                   child:
                      //                                                       Row(
                      //                                                     mainAxisAlignment:
                      //                                                         MainAxisAlignment.spaceBetween,
                      //                                                     crossAxisAlignment:
                      //                                                         CrossAxisAlignment.center,
                      //                                                     children: [
                      //                                                       Column(
                      //                                                         crossAxisAlignment: CrossAxisAlignment.start,
                      //                                                         children: [
                      //                                                           const Text('From'),
                      //                                                           InkWell(
                      //                                                             onTap: () async {
                      //                                                               final TimeOfDay? time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                      //                                                               if (time != null) {
                      //                                                                 String mypickedtime = '${time.hour}:${time.minute}:00';
                      //                                                                 setState(() {
                      //                                                                   fromtime = DateFormat.jm().format(DateFormat("hh:mm:ss").parse(mypickedtime));
                      //                                                                 });
                      //                                                               }
                      //                                                             },
                      //                                                             child: Container(
                      //                                                               height: 25,
                      //                                                               width: 109,
                      //                                                               padding: const EdgeInsets.all(4),
                      //                                                               decoration: BoxDecoration(
                      //                                                                 borderRadius: const BorderRadius.all(Radius.circular(9)),
                      //                                                                 border: Border.all(width: 1, color: Colors.black),
                      //                                                               ),
                      //                                                               child: Row(
                      //                                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //                                                                 children: [
                      //                                                                   const Icon(
                      //                                                                     Icons.watch_later_outlined,
                      //                                                                     size: 14,
                      //                                                                   ),
                      //                                                                   const SizedBox(
                      //                                                                     width: 3,
                      //                                                                   ),
                      //                                                                   Text(
                      //                                                                     fromtime,
                      //                                                                     style: const TextStyle(fontSize: 14, color: Colors.black),
                      //                                                                   ),
                      //                                                                   const SizedBox(
                      //                                                                     width: 5,
                      //                                                                   )
                      //                                                                 ],
                      //                                                               ),
                      //                                                             ),
                      //                                                           )
                      //                                                         ],
                      //                                                       ),
                      //                                                       Column(
                      //                                                         crossAxisAlignment: CrossAxisAlignment.start,
                      //                                                         children: [
                      //                                                           const Text('To'),
                      //                                                           InkWell(
                      //                                                             onTap: () async {
                      //                                                               final TimeOfDay? time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                      //                                                               if (time != null) {
                      //                                                                 String mypickedtime = '${time.hour}:${time.minute}:00';
                      //                                                                 setState(() {
                      //                                                                   totime = DateFormat.jm().format(DateFormat("hh:mm:ss").parse(mypickedtime));
                      //                                                                 });
                      //                                                               }
                      //                                                             },
                      //                                                             child: Container(
                      //                                                               height: 25,
                      //                                                               width: 109,
                      //                                                               padding: const EdgeInsets.all(4),
                      //                                                               decoration: BoxDecoration(
                      //                                                                 borderRadius: const BorderRadius.all(Radius.circular(9)),
                      //                                                                 border: Border.all(width: 1, color: Colors.black),
                      //                                                               ),
                      //                                                               child: Row(
                      //                                                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //                                                                 children: [
                      //                                                                   const Icon(
                      //                                                                     Icons.watch_later_outlined,
                      //                                                                     size: 14,
                      //                                                                   ),
                      //                                                                   const SizedBox(
                      //                                                                     width: 3,
                      //                                                                   ),
                      //                                                                   Text(
                      //                                                                     totime,
                      //                                                                     style: const TextStyle(fontSize: 14),
                      //                                                                   ),
                      //                                                                   const SizedBox(
                      //                                                                     width: 5,
                      //                                                                   )
                      //                                                                 ],
                      //                                                               ),
                      //                                                             ),
                      //                                                           )
                      //                                                         ],
                      //                                                       )
                      //                                                     ],
                      //                                                   ),
                      //                                                 ),
                      //                                                 InkWell(
                      //                                                   onTap:
                      //                                                       () {
                      //                                                     setState(() {
                      //                                                       shiftList[i] = {
                      //                                                         'shift': changeshiftnamecont.text,
                      //                                                         'fromtime': fromtime,
                      //                                                         'totime': totime
                      //                                                       };
                      //                                                     });
                      //                                                     changeshiftnamecont.text =
                      //                                                         '';
                      //                                                     Navigator.pop(context);
                      //                                                   },
                      //                                                   child:
                      //                                                       Container(
                      //                                                     height:
                      //                                                         31,
                      //                                                     width:
                      //                                                         116,
                      //                                                     decoration:
                      //                                                         BoxDecoration(
                      //                                                       border: Border.all(color: const Color.fromARGB(255, 84, 173, 214), width: 2),
                      //                                                       borderRadius: const BorderRadius.all(Radius.circular(80)),
                      //                                                       color: const Color.fromARGB(255, 46, 49, 146),
                      //                                                     ),
                      //                                                     child:
                      //                                                         const Center(
                      //                                                       child: Text(
                      //                                                         'Change',
                      //                                                         style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
                      //                                                       ),
                      //                                                     ),
                      //                                                   ),
                      //                                                 ),
                      //                                               ],
                      //                                             ),
                      //                                           ),
                      //                                         );
                      //                                       },
                      //                                     )));
                      //                       },
                      //                       child: Padding(
                      //                         padding: const EdgeInsets.only(
                      //                             top: 1),
                      //                         child: Container(
                      //                           padding:
                      //                               const EdgeInsets.only(
                      //                                   left: 3),
                      //                           height: 46,
                      //                           // width: inwidth,
                      //                           decoration: BoxDecoration(
                      //                               color:
                      //                                   const Color.fromARGB(
                      //                                       255,
                      //                                       84,
                      //                                       173,
                      //                                       214),
                      //                               borderRadius:
                      //                                   const BorderRadius
                      //                                           .all(
                      //                                       Radius.circular(
                      //                                           10)),
                      //                               border: Border.all(
                      //                                   width: 1,
                      //                                   color: Colors.black)),
                      //                           child: Row(
                      //                             mainAxisAlignment:
                      //                                 MainAxisAlignment.start,
                      //                             crossAxisAlignment:
                      //                                 CrossAxisAlignment
                      //                                     .center,
                      //                             children: [
                      //                               Column(
                      //                                 mainAxisAlignment:
                      //                                     MainAxisAlignment
                      //                                         .center,
                      //                                 children: [
                      //                                   ////////////////////////////////////////
                      //                                   SizedBox(
                      //                                     width: 70,
                      //                                     child: Text(
                      //                                       shiftList[i]
                      //                                               ['shift']
                      //                                           .toString(),
                      //                                       style:
                      //                                           const TextStyle(
                      //                                         fontSize: 14,
                      //                                         fontWeight:
                      //                                             FontWeight
                      //                                                 .w500,
                      //                                         color: Colors
                      //                                             .white,
                      //                                       ),
                      //                                     ),
                      //                                   ),
                      //                                   Text(
                      //                                     '${shiftList[i]['fromtime'].toString()} - ${shiftList[i]['totime'].toString()}',
                      //                                     style:
                      //                                         const TextStyle(
                      //                                       fontSize: 10,
                      //                                       fontWeight:
                      //                                           FontWeight
                      //                                               .w400,
                      //                                       color:
                      //                                           Colors.white,
                      //                                     ),
                      //                                   ),
                      //                                 ],
                      //                               ),
                      //                               SizedBox(
                      //                                 width: 15,
                      //                                 child: IconButton(
                      //                                     padding:
                      //                                         const EdgeInsets
                      //                                             .all(0),
                      //                                     onPressed: () {
                      //                                       setState(() {
                      //                                         shiftList
                      //                                             .removeAt(
                      //                                                 i);
                      //                                       });
                      //                                     },
                      //                                     icon: const Icon(
                      //                                       Icons.close,
                      //                                       size: 15,
                      //                                       color:
                      //                                           Colors.white,
                      //                                     )),
                      //                               )
                      //                             ],
                      //                           ),
                      //                         ),
                      //                       ),
                      //                     );
                      //                   },
                      //                 ),
                      //               ),
                      //             ),
                      //             IconButton(
                      //                 padding: const EdgeInsets.all(0),
                      //                 onPressed: () {
                      //                   showDialog(
                      //                       barrierColor:
                      //                           const Color.fromARGB(
                      //                               200, 22, 22, 22),
                      //                       context: context,
                      //                       builder:
                      //                           ((context) => StatefulBuilder(
                      //                                 builder: (BuildContext
                      //                                         context,
                      //                                     void Function(
                      //                                             void
                      //                                                 Function())
                      //                                         setState) {
                      //                                   return AlertDialog(
                      //                                     shape: const RoundedRectangleBorder(
                      //                                         borderRadius: BorderRadius
                      //                                             .all(Radius
                      //                                                 .circular(
                      //                                                     17.0))),
                      //                                     insetPadding:
                      //                                         const EdgeInsets
                      //                                                 .only(
                      //                                             left: 20,
                      //                                             right: 20),
                      //                                     content: SizedBox(
                      //                                       height: 180,
                      //                                       width: 294,
                      //                                       child: Column(
                      //                                         mainAxisAlignment:
                      //                                             MainAxisAlignment
                      //                                                 .spaceBetween,
                      //                                         crossAxisAlignment:
                      //                                             CrossAxisAlignment
                      //                                                 .center,
                      //                                         children: [
                      //                                           const Text(
                      //                                             'Add New Shift',
                      //                                             style:
                      //                                                 TextStyle(
                      //                                               fontSize:
                      //                                                   16,
                      //                                               fontWeight:
                      //                                                   FontWeight
                      //                                                       .w500,
                      //                                               color: Colors
                      //                                                   .black,
                      //                                             ),
                      //                                           ),
                      //                                           TextFil(
                      //                                             readonly:
                      //                                                 false,
                      //                                             conPadding:
                      //                                                 7,
                      //                                             borderwidth:
                      //                                                 1,
                      //                                             cont:
                      //                                                 setshiftnamecont,
                      //                                             hintText:
                      //                                                 'Shift Name',
                      //                                             maxline: 1,
                      //                                             borderradius:
                      //                                                 80,
                      //                                             fieldWidth:
                      //                                                 232,
                      //                                             textSize:
                      //                                                 14,
                      //                                           ),
                      //                                           SizedBox(
                      //                                             width: 232,
                      //                                             child: Row(
                      //                                               mainAxisAlignment:
                      //                                                   MainAxisAlignment
                      //                                                       .spaceBetween,
                      //                                               crossAxisAlignment:
                      //                                                   CrossAxisAlignment
                      //                                                       .center,
                      //                                               children: [
                      //                                                 Column(
                      //                                                   crossAxisAlignment:
                      //                                                       CrossAxisAlignment.start,
                      //                                                   children: [
                      //                                                     const Text('From'),
                      //                                                     InkWell(
                      //                                                       onTap: () async {
                      //                                                         final TimeOfDay? time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                      //                                                         if (time != null) {
                      //                                                           String mypickedtime = '${time.hour}:${time.minute}:00';
                      //                                                           setState(() {
                      //                                                             fromtime = DateFormat.jm().format(DateFormat("hh:mm:ss").parse(mypickedtime));
                      //                                                           });
                      //                                                         }
                      //                                                       },
                      //                                                       child: Container(
                      //                                                         height: 25,
                      //                                                         width: 109,
                      //                                                         padding: const EdgeInsets.all(4),
                      //                                                         decoration: BoxDecoration(
                      //                                                           borderRadius: const BorderRadius.all(Radius.circular(9)),
                      //                                                           border: Border.all(width: 1, color: Colors.black),
                      //                                                         ),
                      //                                                         child: Row(
                      //                                                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //                                                           children: [
                      //                                                             const Icon(
                      //                                                               Icons.watch_later_outlined,
                      //                                                               size: 14,
                      //                                                             ),
                      //                                                             const SizedBox(
                      //                                                               width: 3,
                      //                                                             ),
                      //                                                             Text(
                      //                                                               fromtime,
                      //                                                               style: const TextStyle(fontSize: 14, color: Colors.black),
                      //                                                             ),
                      //                                                             const SizedBox(
                      //                                                               width: 5,
                      //                                                             )
                      //                                                           ],
                      //                                                         ),
                      //                                                       ),
                      //                                                     )
                      //                                                   ],
                      //                                                 ),
                      //                                                 Column(
                      //                                                   crossAxisAlignment:
                      //                                                       CrossAxisAlignment.start,
                      //                                                   children: [
                      //                                                     const Text('To'),
                      //                                                     InkWell(
                      //                                                       onTap: () async {
                      //                                                         final TimeOfDay? time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                      //                                                         if (time != null) {
                      //                                                           String mypickedtime = '${time.hour}:${time.minute}:00';
                      //                                                           setState(() {
                      //                                                             totime = DateFormat.jm().format(DateFormat("hh:mm:ss").parse(mypickedtime));
                      //                                                           });
                      //                                                         }
                      //                                                       },
                      //                                                       child: Container(
                      //                                                         height: 25,
                      //                                                         width: 109,
                      //                                                         padding: const EdgeInsets.all(4),
                      //                                                         decoration: BoxDecoration(
                      //                                                           borderRadius: const BorderRadius.all(Radius.circular(9)),
                      //                                                           border: Border.all(width: 1, color: Colors.black),
                      //                                                         ),
                      //                                                         child: Row(
                      //                                                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //                                                           children: [
                      //                                                             const Icon(
                      //                                                               Icons.watch_later_outlined,
                      //                                                               size: 14,
                      //                                                             ),
                      //                                                             const SizedBox(
                      //                                                               width: 3,
                      //                                                             ),
                      //                                                             Text(
                      //                                                               totime,
                      //                                                               style: const TextStyle(fontSize: 14),
                      //                                                             ),
                      //                                                             const SizedBox(
                      //                                                               width: 5,
                      //                                                             )
                      //                                                           ],
                      //                                                         ),
                      //                                                       ),
                      //                                                     )
                      //                                                   ],
                      //                                                 )
                      //                                               ],
                      //                                             ),
                      //                                           ),
                      //                                           InkWell(
                      //                                             onTap: () {
                      //                                               setState(
                      //                                                   () {
                      //                                                 shiftList
                      //                                                     .insert(
                      //                                                         0,
                      //                                                         {
                      //                                                       'shift': setshiftnamecont.text,
                      //                                                       'fromtime': fromtime,
                      //                                                       'totime': totime
                      //                                                     });
                      //                                               });
                      //                                               setshiftnamecont
                      //                                                   .text = '';
                      //                                               Navigator.pop(
                      //                                                   context);
                      //                                             },
                      //                                             child:
                      //                                                 Container(
                      //                                               height:
                      //                                                   31,
                      //                                               width:
                      //                                                   116,
                      //                                               decoration:
                      //                                                   BoxDecoration(
                      //                                                 border: Border.all(
                      //                                                     color: const Color.fromARGB(
                      //                                                         255,
                      //                                                         84,
                      //                                                         173,
                      //                                                         214),
                      //                                                     width:
                      //                                                         2),
                      //                                                 borderRadius:
                      //                                                     const BorderRadius.all(Radius.circular(80)),
                      //                                                 color: const Color.fromARGB(
                      //                                                     255,
                      //                                                     84,
                      //                                                     173,
                      //                                                     214),
                      //                                               ),
                      //                                               child:
                      //                                                   const Center(
                      //                                                 child:
                      //                                                     Text(
                      //                                                   'Confirm',
                      //                                                   style: TextStyle(
                      //                                                       fontSize: 14,
                      //                                                       color: Colors.white,
                      //                                                       fontWeight: FontWeight.bold),
                      //                                                 ),
                      //                                               ),
                      //                                             ),
                      //                                           ),
                      //                                         ],
                      //                                       ),
                      //                                     ),
                      //                                   );
                      //                                 },
                      //                               )));
                      //                 },
                      //                 icon: const Icon(
                      //                   Icons.add_circle_outline,
                      //                   size: 27,
                      //                   color:
                      //                       Color.fromARGB(255, 84, 173, 214),
                      //                 ))
                      //           ],
                      //         ),
                      //         Row(
                      //             mainAxisAlignment: MainAxisAlignment.end,
                      //             children: const [
                      //               Text(
                      //                 'Shift',
                      //                 style: TextStyle(
                      //                   fontSize: 15,
                      //                   fontWeight: FontWeight.w400,
                      //                   color:
                      //                       Color.fromARGB(255, 52, 52, 52),
                      //                 ),
                      //               )
                      //             ])
                      //       ],
                      //     )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
