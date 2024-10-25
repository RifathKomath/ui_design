import 'package:flutter/material.dart';

Widget customCard({
  required String image,
  required String label,
  required String subLabel,
  required IconData icon,
  required String price,
}) {
  return Builder(
    builder: (context) {
      return SizedBox(
        width: MediaQuery.of(context).size.width * 0.45, 
        height: MediaQuery.of(context).size.height * 0.3,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.white,
          elevation: 5,
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: SizedBox(
                  height: 90,
                  child: Image.asset(image),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Text(
                      label,
                      style: const TextStyle(
                        color: Color.fromRGBO(109, 56, 5, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      subLabel,
                      style: const TextStyle(
                        color: Color.fromRGBO(109, 56, 5, 1),
                        fontSize: 10,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          icon,
                          color: Colors.orange,
                        ),
                        Text(
                          price,
                          style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        
                     const Spacer(),
                        InkWell(
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  );
}
