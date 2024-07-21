import 'package:flutter/material.dart';

class CustomCourseItem extends StatelessWidget {
  String image;
  String textContainer;
  Function goToDetails;
   CustomCourseItem({super.key,required this.image,required this.textContainer,required this.goToDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(image,
          ),
        ),
        const SizedBox(height: 8,),
        GestureDetector(
          onTap: (){
            goToDetails();
          },
          child: Container(
            padding:  const EdgeInsets.symmetric(vertical: 15),
            width: double.infinity,
            decoration: BoxDecoration(
                color:   Color.fromRGBO(4, 50, 230, 40),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Text(
              textContainer,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),

          ),
        ),
      ],
    );
  }
}
