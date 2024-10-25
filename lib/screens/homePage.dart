import 'package:flutter/material.dart';
import 'package:skill_up/const/widgets.dart';

class HomePage extends StatelessWidget {
  final String doctorName;
  final String centerName;

  const HomePage(
      {super.key, required this.doctorName, required this.centerName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(238, 238, 238, 1),
      appBar: AppBar(
        title: Text(centerName),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); //  back
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(height: 16),
            // Search
            TextFormField(
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                labelStyle: const TextStyle(color: Colors.black),
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide:
                      const BorderSide(color: Color.fromRGBO(27, 60, 89, 1)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide:
                      const BorderSide(color: Color.fromRGBO(27, 60, 89, 1)),
                ),
              ),
              textDirection: TextDirection.rtl,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Text(
                'شرح $doctorName',
                style: TextStyle(
                  color: Color.fromRGBO(27, 60, 89, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            // Media Cards
            buildMediaCard(
              icon: Icons.play_circle_filled,
              iconColor: Color.fromRGBO(27, 60, 89, 1),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Text(
                'pdf $doctorName',
                style: TextStyle(
                  color: Color.fromRGBO(27, 60, 89, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            buildMediaCard(
              icon: Icons.picture_as_pdf,
              iconColor: Color.fromRGBO(27, 60, 89, 1),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 250),
              child: Text(
                'pdf $doctorName',
                style: TextStyle(
                  color: Color.fromRGBO(75, 155, 224, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            buildMediaCard(
              icon: Icons.picture_as_pdf,
              iconColor: Color.fromRGBO(75, 155, 224, 1),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'السجل',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
        ],
        currentIndex: 2,
        selectedItemColor: Color.fromRGBO(27, 60, 89, 1),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
      ),
    );
  }
}
