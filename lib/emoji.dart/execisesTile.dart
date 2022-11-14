import 'package:flutter/material.dart';
class ExecisesTile
 extends StatelessWidget {
  final icon;
  final String exercisesName;
  final int exercisesOfNumber;
  final color;
  const ExecisesTile
  ({super.key,
  required this.icon,
  required this.exercisesName,
  required this.exercisesOfNumber,
  required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom:12.0),
      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                            children: [
                               ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                 child: Container(
                                  padding: EdgeInsets.all(16),
                                  color: color,
                                  child: Icon(icon,color: Colors.white,)),
                               ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(exercisesName,
                                style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 16
                                ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(exercisesOfNumber.toString()+'Exercises',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14
                                ),
                                )
                              ],
                            ),
                            ],
                           ),
                            Icon(Icons.more_horiz)
                          ],
                        )
                      ),
    );
  }
}