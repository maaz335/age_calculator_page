import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: age_calculator(),
      ),
    );
const List<String> list1 = <String>['One', 'Two', 'Three', 'Four'];
const List<String> list2 = <String>['Date', 'Two', 'Three', 'Four'];
const List<String> list3 = <String>['Month', 'Two', 'Three', 'Four'];
const List<String> list4 = <String>['Year', 'Two', 'Three', 'Four'];

class age_calculator extends StatelessWidget {
  String dropdownValue1 = list1.first;
  String dropdownValue2 = list2.first;
  String dropdownValue3 = list3.first;
  String dropdownValue4 = list4.first;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height * 1.0,
          width: MediaQuery.of(context).size.width * 1.0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Expanded(
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
                          style:
                              TextStyle(fontSize: 20, color: Colors.blueAccent),
                        ),
                      )
                    ],
                  ),
                  Inputfield(Title: "Bride/Groom Name"),
                  Inputfield(Title: "Surname"),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 6),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
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
                          items: list2
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Container(
                                height: 40,
                                width: 55,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      child: Image(
                                        image:
                                            AssetImage('Assets/download.jpg'),
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
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 25),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: MediaQuery.of(context).size.width * 0.29,
                        child: DropdownButton<String>(
                          value: dropdownValue2,
                          underline: Container(
                            color: Colors.white,
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black45),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                          },
                          items: list2
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 20),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 23),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: MediaQuery.of(context).size.width * 0.29,
                        child: DropdownButton<String>(
                          value: dropdownValue3,
                          underline: Container(
                            color: Colors.white,
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black45),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                          },
                          items: list3
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 20),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 23),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black45),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: MediaQuery.of(context).size.width * 0.29,
                        child: DropdownButton<String>(
                          value: dropdownValue4,
                          underline: Container(
                            color: Colors.white,
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black45),
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                          },
                          items: list4
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(fontSize: 20),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Years: 0, ",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        Text(
                          "Months: 0, ",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        Text(
                          "Days: 0",
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .44,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black45),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.black45)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Male"),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .44,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.black45),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  side: BorderSide(color: Colors.black45)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Female"),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStatePropertyAll(Colors.black),
                        backgroundColor: MaterialStatePropertyAll(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: Colors.black45),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
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
  Inputfield({required this.Title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 3,
              ),
              borderRadius: BorderRadius.circular(25.0),
            ),
            labelText: Title,
            labelStyle: TextStyle(color: Colors.black45)),
      ),
    );
  }
}
