import 'package:age_calculator/age_calculator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(
      MaterialApp(
        home: age_calculator(),
      ),
    );
const List<String> list2 = <String>['Date', 'Two', 'Three', 'Four'];

class age_calculator extends StatefulWidget {
  @override
  State<age_calculator> createState() => _age_calculatorState();
}

class _age_calculatorState extends State<age_calculator> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field

    super.initState();
  }

  String dropdownValue2 = list2.first;
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
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.01),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: TextField(
                    controller: dateInput,
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2100));

                      if (pickedDate != null) {
                        print(
                            pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        String formattedDate =
                            DateFormat('yyyy-MM-dd').format(pickedDate);
                        print(
                            formattedDate); //formatted date output using intl package =>  2021-03-16
                        setState(() {
                          dateInput.text =
                              formattedDate; //set output date to TextField value.

                          // Find out your age as of today's date 2021-03-08
                          duration = AgeCalculator.age(pickedDate);
                        });
                      } else {}
                    },
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
                        labelText: "Date of Birth",
                        labelStyle: TextStyle(color: Colors.black45)),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Years: ${duration?.years},",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.057,
                          color: Colors.black),
                    ),
                    Text(
                      "Months: ${duration?.months}, ",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.057,
                          color: Colors.black),
                    ),
                    Text(
                      "Days: ${duration?.days}",
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
