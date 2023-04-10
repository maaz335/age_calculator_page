import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

void main() => runApp(
      MaterialApp(
        home: age_calculator(),
      ),
    );
List<String> list1 = <String>[
  'Year',
  '1990',
  '1991',
  '1992',
  '1993',
  '1994',
  '1995',
  '1996',
  '1997',
  '1998',
  '1999',
  '2000',
  '2001',
  '2002',
  '2003',
  '2004',
  '2005',
  '2006',
  '2007',
  '2008',
  '2009',
  '2010',
  '2011',
  '2012',
  '2013',
  '2014',
  '2015',
  '2016',
  '2017',
  '2018',
  '2019',
  '2020',
  '2021',
  '2022',
  '2023',
  '2024'
]; //'2000',
List<String> list2 = <String>['Date', 'Two', 'Three', 'Four'];
List<String> list3 = <String>[
  'Month',
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];
List<String> list4 = <String>['Date'];

List<String> list5 = <String>[
  'Date',
  '01',
  '02',
  '03',
  '04',
  '05',
  '06',
  '07',
  '08',
  '09',
  '10',
  '11',
  '12',
  '13',
  '14',
  '15',
  '16',
  '17',
  '18',
  '19',
  '20',
  '21',
  '22',
  '23',
  '24',
  '25',
  '26',
  '27',
  '28',
  '29',
  '30'
];

List<String> list6 = <String>[
  'Date',
  '01',
  '02',
  '03',
  '04',
  '05',
  '06',
  '07',
  '08',
  '09',
  '10',
  '11',
  '12',
  '13',
  '14',
  '15',
  '16',
  '17',
  '18',
  '19',
  '20',
  '21',
  '22',
  '23',
  '24',
  '25',
  '26',
  '27',
  '28',
  '29'
];

List<String> list7 = <String>[
  'Date',
  '01',
  '02',
  '03',
  '04',
  '05',
  '06',
  '07',
  '08',
  '09',
  '10',
  '11',
  '12',
  '13',
  '14',
  '15',
  '16',
  '17',
  '18',
  '19',
  '20',
  '21',
  '22',
  '23',
  '24',
  '25',
  '26',
  '27',
  '28'
];
List<String> list8 = <String>['Date'];

class age_calculator extends StatefulWidget {
  @override
  State<age_calculator> createState() => _age_calculatorState();
}

class _age_calculatorState extends State<age_calculator> {
  // TextEditingController dateInput = TextEditingController();

  // @override
  // void initState() {
  //   dateInput.text = ""; //set the initial value of text field
  //
  //   super.initState();
  // }
  String dropdownValue1 = list1.first;
  String dropdownValue2 = list2.first;
  String dropdownValue3 = list3.first;
  String dropdownValue4 = list8.first;
  String? month;
  DateDuration? duration;
  String? name;
  String? surname;
  PhoneNumber? number;
  String? gender;
  DateDuration? dateOfBirth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Container(
              color: Colors.grey.shade200,
              height: MediaQuery.of(context).size.height * 1.0,
              width: MediaQuery.of(context).size.width * 1.0,
              child: Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                            child: IconButton(
                          onPressed: () {
                            //TODO: write code here to navigate to previous page
                            //WARNING: nothing will save if you go back from this button
                          },
                          icon: Icon(Icons.arrow_back_ios),
                        )),
                        Container(
                          child: Text(
                            "Let's Start",
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.05,
                                color: Colors.blueAccent),
                          ),
                        )
                      ],
                    ),
                    Inputfield(
                      Title: "Bride/Groom Name",
                      onChanged: (value) {
                        name = value;
                      },
                    ),
                    Inputfield(
                      Title: "Surname",
                      onChanged: (value) {
                        surname = value;
                      },
                    ),
                    // Row(
                    //   children: [
                    //     Container(
                    //       height: MediaQuery.of(context).size.height * 0.05,
                    //       padding: EdgeInsets.only(
                    //           left: MediaQuery.of(context).size.width * 0.015),
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         border: Border.all(color: Colors.black45),
                    //         borderRadius: BorderRadius.all(Radius.circular(50)),
                    //         boxShadow: [
                    //           BoxShadow(
                    //             color: Colors.black26.withOpacity(0.2),
                    //             // spreadRadius: 1,
                    //             // blurRadius: 1,
                    //             blurStyle: BlurStyle.normal,
                    //             offset: Offset(0, 2), // changes position of shadow
                    //           ),
                    //         ],
                    //       ),
                    //       child: DropdownButton<String>(
                    //         value: dropdownValue2,
                    //         underline: Container(
                    //           color: Colors.white,
                    //         ),
                    //         icon: const Icon(Icons.arrow_drop_down),
                    //         style: const TextStyle(color: Colors.black45),
                    //         onChanged: (String? value) {
                    //           // This is called when the user selects an item.
                    //         },
                    //         items:
                    //             list2.map<DropdownMenuItem<String>>((String value) {
                    //           return DropdownMenuItem<String>(
                    //             value: value,
                    //             child: Container(
                    //               width: MediaQuery.of(context).size.width * 0.14,
                    //               child: Row(
                    //                 children: [
                    //                   Container(
                    //                     height:
                    //                         MediaQuery.of(context).size.width * 0.077,
                    //                     width:
                    //                         MediaQuery.of(context).size.width * 0.077,
                    //                     child: Image(
                    //                       image: AssetImage('Assets/download.jpg'),
                    //                     ),
                    //                   ),
                    //                   Text(
                    //                     ' +91',
                    //                     style: TextStyle(
                    //                         fontWeight: FontWeight.bold,
                    //                         color: Colors.black45),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //           );
                    //         }).toList(),
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width * 0.03,
                    //     ),
                    //     Container(
                    //         width: MediaQuery.of(context).size.width * 0.646,
                    //         child: Inputfield(
                    //           Title: "Phone Number",
                    //           onChanged: (value) {
                    //             number = value;
                    //           },
                    //         )),
                    //   ],
                    // ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.070,
                      child: PhysicalModel(
                        borderRadius: BorderRadius.circular(50),
                        shadowColor: Colors.black45,
                        color: Colors.white12,
                        child: IntlPhoneField(
                          decoration: InputDecoration(
                              filled: true,
                              //<-- SEE HERE
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(color: Colors.black45)),
                          onChanged: (value) {
                            number = value;
                          },
                          onCountryChanged: (country) {
                            print('Country changed to: ' + country.name);
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Date of Birth",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.07,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.3,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.085),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(color: Colors.black45),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                                blurStyle: BlurStyle.normal,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: DropdownButton<String>(
                            value: dropdownValue1,
                            underline: Container(
                              color: Colors.white,
                            ),
                            icon: const Icon(Icons.arrow_drop_down),
                            style: const TextStyle(color: Colors.black45),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue1 = value!;
                              });
                            },
                            items: list1
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.3,
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.085),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(color: Colors.black45),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                                blurStyle: BlurStyle.normal,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: DropdownButton<String>(
                            value: dropdownValue3,
                            underline: Container(
                              color: Colors.white,
                            ),
                            icon: const Icon(Icons.arrow_drop_down),
                            style: const TextStyle(color: Colors.black45),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.

                              dropdownValue3 = value!;
                              if (dropdownValue3 == 'January') {
                                month = '01';
                              } else if (dropdownValue3 == 'February') {
                                month = '02';
                              } else if (dropdownValue3 == 'March') {
                                month = '03';
                              } else if (dropdownValue3 == 'April') {
                                month = '04';
                              } else if (dropdownValue3 == 'May') {
                                month = '05';
                              } else if (dropdownValue3 == 'June') {
                                month = '06';
                              } else if (dropdownValue3 == 'July') {
                                month = '07';
                              } else if (dropdownValue3 == 'August') {
                                month = '08';
                              } else if (dropdownValue3 == 'September') {
                                month = '09';
                              } else if (dropdownValue3 == 'October') {
                                month = '10';
                              } else if (dropdownValue3 == 'November') {
                                month = '11';
                              } else if (dropdownValue3 == 'December') {
                                month = '12';
                              }
                              if (month == '01' ||
                                  month == '03' ||
                                  month == '05' ||
                                  month == '07' ||
                                  month == '08' ||
                                  month == '10' ||
                                  month == '12') {
                                list4 = <String>[
                                  'Date',
                                  '01',
                                  '02',
                                  '03',
                                  '04',
                                  '05',
                                  '06',
                                  '07',
                                  '08',
                                  '09',
                                  '10',
                                  '11',
                                  '12',
                                  '13',
                                  '14',
                                  '15',
                                  '16',
                                  '17',
                                  '18',
                                  '19',
                                  '20',
                                  '21',
                                  '22',
                                  '23',
                                  '24',
                                  '25',
                                  '26',
                                  '27',
                                  '28',
                                  '29',
                                  '30',
                                  '31'
                                ];
                              }
                              if (month == '04' ||
                                  month == '06' ||
                                  month == '09' ||
                                  month == '11') {
                                list4 = list5;
                              }
                              if (month == '02' &&
                                  int.parse(dropdownValue1) % 4 == 0) {
                                list4 = list6;
                              }
                              if (month == '02' &&
                                  int.parse(dropdownValue1) % 4 != 0) {
                                list4 = list7;
                              }
                              print(month);
                              setState(() {});
                            },
                            items: list3
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border: Border.all(color: Colors.black45),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1,
                                blurStyle: BlurStyle.normal,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.085),
                          child: DropdownButton<String>(
                            value: dropdownValue4,
                            underline: Container(
                              color: Colors.white,
                            ),
                            icon: const Icon(Icons.arrow_drop_down),
                            style: const TextStyle(color: Colors.black45),
                            onTap: () {
                              setState(() {});
                            },
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              dropdownValue4 = value!;
                              DateTime dt = DateTime.parse(
                                  dropdownValue1.toString() +
                                      month! +
                                      dropdownValue4.toString());
                              print(dt);
                              duration = AgeCalculator.age(dt);
                              dateOfBirth = duration;
                              setState(() {});
                            },
                            items: list4
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                    // Padding(
                    //   padding: EdgeInsets.only(
                    //       bottom: MediaQuery.of(context).size.height * 0.01),
                    //   child: Container(
                    //     height: MediaQuery.of(context).size.height * 0.05,
                    //     child: TextField(
                    //       controller: dateInput,
                    //       onTap: () async {
                    //         DateTime? pickedDate = await showDatePicker(
                    //             context: context,
                    //             initialDate: DateTime.now(),
                    //             firstDate: DateTime(1950),
                    //             //DateTime.now() - not to allow to choose before today.
                    //             lastDate: DateTime(2100));
                    //
                    //         if (pickedDate != null) {
                    //           print(
                    //               pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                    //           String formattedDate =
                    //               DateFormat('yyyy-MM-dd').format(pickedDate);
                    //           print(
                    //               formattedDate); //formatted date output using intl package =>  2021-03-16
                    //           setState(() {
                    //             dateInput.text =
                    //                 formattedDate; //set output date to TextField value.
                    //
                    //             // Find out your age as of today's date 2021-03-08
                    //             duration = AgeCalculator.age(pickedDate);
                    //           });
                    //         } else {}
                    //       },
                    //       keyboardType: TextInputType.emailAddress,
                    //       decoration: InputDecoration(
                    //           filled: true,
                    //           //<-- SEE HERE
                    //           fillColor: Colors.white,
                    //           border: OutlineInputBorder(
                    //             borderSide: BorderSide(
                    //               width: 3,
                    //             ),
                    //             borderRadius: BorderRadius.circular(25.0),
                    //           ),
                    //           labelText: "Date of Birth",
                    //           labelStyle: TextStyle(color: Colors.black45)),
                    //     ),
                    //   ),
                    // ),
                    Padding(
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Years: ${duration?.years},", //${duration?.years}
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.057,
                                color: Colors.black),
                          ),
                          Text(
                            "Months: ${duration?.months}, ",
                            //${duration?.months}
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.057,
                                color: Colors.black),
                          ),
                          Text(
                            "Days: ${duration?.days}", //${duration?.days}
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.057,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .44,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.redAccent; //<-- SEE HERE
                                  return null; // Defer to the widget's default.
                                },
                              ),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black45),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  // side: BorderSide(color: Colors.black45)
                                ),
                              ),
                            ),
                            onPressed: () {
                              gender = 'Male';
                            },
                            child: Text(
                              "Male",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.05),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * .44,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              overlayColor:
                                  MaterialStateProperty.resolveWith<Color?>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.redAccent; //<-- SEE HERE
                                  return null; // Defer to the widget's default.
                                },
                              ),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              foregroundColor:
                                  MaterialStatePropertyAll(Colors.black45),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  // side: BorderSide(color: Colors.black45)
                                ),
                              ),
                            ),
                            onPressed: () {
                              gender = 'Female';
                            },
                            child: Text(
                              "Female",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.05),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1.0,
                      height: MediaQuery.of(context).size.height * 0.05,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.black),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              // side: BorderSide(color: Colors.black45),
                            ),
                          ),
                        ),
                        onPressed: () {
                          if (name == null) {
                            showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                // user must tap button!
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Icon(
                                      Icons.warning_rounded,
                                      color: Colors.blueAccent,
                                      size: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Center(
                                              child: Text(
                                            'Please Enter your Name',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.055),
                                          )),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          } else if (surname == null) {
                            showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                // user must tap button!
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Icon(
                                      Icons.warning_rounded,
                                      color: Colors.blueAccent,
                                      size: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Center(
                                              child: Text(
                                            'Please Enter your surName',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.055),
                                          )),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          } else if (gender == null) {
                            showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                // user must tap button!
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Icon(
                                      Icons.warning_rounded,
                                      color: Colors.blueAccent,
                                      size: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Center(
                                              child: Text(
                                            'Please Enter your Gender',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.055),
                                          )),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          } else if (number == null) {
                            showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                // user must tap button!
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Icon(
                                      Icons.warning_rounded,
                                      color: Colors.blueAccent,
                                      size: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Center(
                                              child: Text(
                                            'Please Enter your Phone Number',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.055),
                                          )),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          } else if (dateOfBirth == null) {
                            showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                // user must tap button!
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Icon(
                                      Icons.warning_rounded,
                                      color: Colors.blueAccent,
                                      size: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Center(
                                              child: Text(
                                            'Please Enter your Date of Birth',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.055),
                                          )),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          } else if (duration!.years < 21 && gender == 'Male') {
                            showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                // user must tap button!
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Icon(
                                      Icons.warning_rounded,
                                      color: Colors.blueAccent,
                                      size: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Center(
                                              child: Text(
                                            'Male must have 21 year\'s of Age',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.055),
                                          )),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          } else if (duration!.years < 18 && gender == 'Male') {
                            showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                // user must tap button!
                                builder: (BuildContext context) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.of(context).pop(true);
                                  });
                                  return AlertDialog(
                                    title: Icon(
                                      Icons.warning_rounded,
                                      color: Colors.blueAccent,
                                      size: MediaQuery.of(context).size.width *
                                          0.1,
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Center(
                                              child: Text(
                                            'Female must have 18 year\'s of Age',
                                            style: TextStyle(
                                                fontSize: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.055),
                                          )),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          } else {
                            // TODO:Here you will write code to navigate to next screen
                            // TODO:you can also save local variable to global for further usage
                          }
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.055),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Inputfield extends StatelessWidget {
  String Title;
  Function(String) onChanged;

  Inputfield({required this.Title, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        child: TextField(
          onChanged: onChanged,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              filled: true,
              //<-- SEE HERE
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
              labelText: Title,
              labelStyle: TextStyle(color: Colors.black45)),
        ),
      ),
    );
  }
}
