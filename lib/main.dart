import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: age_calculator(),
      ),
    );
const List<String> list1 = <String>[
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
const List<String> list2 = <String>['Date', 'Two', 'Three', 'Four'];
const List<String> list3 = <String>[
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
const List<String> list4 = <String>[
  'Date',
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
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
  String dropdownValue4 = list4.first;
  String? month;
  DateDuration? duration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey.shade200,
        height: MediaQuery.of(context).size.height * 1.0,
        width: MediaQuery.of(context).size.width * 1.0,
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                      child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios),
                  )),
                  Container(
                    child: Text(
                      "Let's Start",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          color: Colors.blueAccent),
                    ),
                  )
                ],
              ),
              Inputfield(Title: "Bride/Groom Name"),
              Inputfield(Title: "Surname"),
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.015),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black45),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: DropdownButton<String>(
                      value: dropdownValue2,
                      underline: Container(
                        color: Colors.white,
                      ),
                      icon: const Icon(Icons.arrow_drop_down),
                      style: const TextStyle(color: Colors.black45),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                      },
                      items:
                          list2.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.14,
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.077,
                                  width:
                                      MediaQuery.of(context).size.width * 0.077,
                                  child: Image(
                                    image: AssetImage('Assets/download.jpg'),
                                  ),
                                ),
                                Text(
                                  ' +91',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.03,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.646,
                      child: Inputfield(Title: "Phone Number")),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text("0/10"),
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
                        border: Border.all(color: Colors.black45),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: DropdownButton<String>(
                      value: dropdownValue4,
                      underline: Container(
                        color: Colors.white,
                      ),
                      icon: const Icon(Icons.arrow_drop_down),
                      style: const TextStyle(color: Colors.black45),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue4 = value!;
                        });
                      },
                      items:
                          list4.map<DropdownMenuItem<String>>((String value) {
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
                        border: Border.all(color: Colors.black45),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: DropdownButton<String>(
                      value: dropdownValue3,
                      underline: Container(
                        color: Colors.white,
                      ),
                      icon: const Icon(Icons.arrow_drop_down),
                      style: const TextStyle(color: Colors.black45),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
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
                        });
                      },
                      items:
                          list3.map<DropdownMenuItem<String>>((String value) {
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
                        border: Border.all(color: Colors.black45),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
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
                          DateTime dt = DateTime.parse(
                              dropdownValue1.toString() +
                                  month! +
                                  dropdownValue4.toString());
                          print(dt);
                          duration = AgeCalculator.age(dt);
                        });
                      },
                      items:
                          list1.map<DropdownMenuItem<String>>((String value) {
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
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Years: ${duration?.years},", //${duration?.years}
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.057,
                          color: Colors.black),
                    ),
                    Text(
                      "Months: ${duration?.months}, ", //${duration?.months}
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.057,
                          color: Colors.black),
                    ),
                    Text(
                      "Days: ${duration?.days}", //${duration?.days}
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.057,
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
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor:
                            MaterialStatePropertyAll(Colors.black45),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.black45)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Male",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .44,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        foregroundColor:
                            MaterialStatePropertyAll(Colors.black45),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              side: BorderSide(color: Colors.black45)),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Female",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.05),
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
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.black45),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.055),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Inputfield extends StatelessWidget {
  String Title;

  Inputfield({required this.Title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.01),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.05,
        child: TextField(
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
