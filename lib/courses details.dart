import 'package:flutter/material.dart';

class CoursesDetails extends StatelessWidget {
  String image;
  String textDescription;
  CoursesDetails({super.key,required this.image,required this.textDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route App One"),
        backgroundColor: const Color.fromRGBO(4, 50, 230, 40),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
              "assets/images/Bg.jpg",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 15,left: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    image,
                  ),
                  const SizedBox(height: 10,),
                  Text(''''${textDescription}''',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )
    );
  }
}
