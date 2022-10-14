import 'package:flutter/material.dart';

class Testimonial extends StatelessWidget {
  final Size screenSize;
  const Testimonial({Key? key, required this.screenSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Testimonial",
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 4,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/image/web7.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Technology, Compute and Code together will bring\revolutionary changes in the upcoming Future",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 4,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/image/web5.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Technology, Compute and Code together will bring\revolutionary changes in the upcoming Future",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width / 4,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/image/web6.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey,
              ),
              child: const Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Technology, Compute and Code together will bring\revolutionary changes in the upcoming Future",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
