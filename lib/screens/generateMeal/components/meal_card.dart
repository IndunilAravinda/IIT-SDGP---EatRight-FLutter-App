import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MealCard extends StatelessWidget {
  final String title;
  final String cookTime;
  final String sourceUrl;

  MealCard({
    required this.title,
    required this.cookTime,
    required this.sourceUrl,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch(sourceUrl),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        width: MediaQuery.of(context).size.width,
        height: 75, 
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 81, 198, 188),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: const Offset(
                0.0,
                10.0,
              ),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
        ),
        child: Stack(
          children: [
            Align(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Container(
                    padding: const EdgeInsets.all(3),
                    margin: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.schedule,
                          color: Colors.white,
                          size: 15,
                        ),
                        const SizedBox(width: 7),
                        Text(cookTime, style: const TextStyle(color: Colors.white, fontSize: 12),),
                      ],
                    ),
                  )
                ],
              ),
              alignment: Alignment.bottomLeft,
            ),
          ],
        ),
      )
    );
  }
}
