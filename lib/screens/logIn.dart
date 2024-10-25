import 'package:flutter/material.dart';
import 'package:skill_up/const/widgets.dart';
import 'package:skill_up/screens/homePage.dart';


class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  final BorderRadius borderRadius = BorderRadius.circular(20.0);
  String? selectedDoctor;
  String? selectedCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 238,238, 1),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                logoSection(),
                const Text(
                  'skill up',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                const SizedBox(height: 24),

                // Email 
                buildTextField(
                  labelText: 'البريد الالكتروني',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),

                // Student Name
                buildTextField(
                  labelText: 'اسم الطالب',
                  keyboardType: TextInputType.name,
                ),
                const SizedBox(height: 16),

                // Phone Number
                buildTextField(
                  labelText: 'ادخل رقم الهاتف',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),

                // Faculty name
                buildDropdownField(
                  labelText: 'ادخل الكليه',
                  items: ['كلية حاسبات', 'كلية تجاره'],
                  onChanged: (value) {},
                ),
                const SizedBox(height: 16),

                // Center name
                buildDropdownField(
                  labelText: 'ادخل السنتر',
                  items: ['سنتر تو جو', 'سنتر focus'],
                  onChanged: (value) {
                    setState(() {
                      selectedCenter = value;
                    });
                  },
                  value: selectedCenter,
                ),
                const SizedBox(height: 16),

                // Doctor name
                buildDropdownField(
                  labelText: 'اسم الدكتور',
                  items: ['دكتور عزمي', 'دكتور عمرو'],
                  onChanged: (value) {
                    setState(() {
                      selectedDoctor = value;
                    });
                  },
                  value: selectedDoctor,
                ),
                const SizedBox(height: 16),

                // Register Button
                Container(
                  height: 50,
                  width: 300,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(27, 60, 89, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: borderRadius,
                      ),
                    ),
                    onPressed: () {
                      if (selectedDoctor != null && selectedCenter != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(
                              doctorName: selectedDoctor!,
                              centerName: selectedCenter!,
                            ),
                          ),
                        );
                      }
                    },
                    child: const Text(
                      'تسجيل', 
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
