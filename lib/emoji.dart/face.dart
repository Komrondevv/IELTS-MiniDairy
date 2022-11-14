import 'package:flutter/material.dart';
class Face extends StatelessWidget {
  final String facetion;
  const Face({super.key,
  required this.facetion, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Colors.orange[300],
              borderRadius: BorderRadius.circular(16)
                ),
               padding: EdgeInsets.all(12),
                 child: Center(child: Text(facetion,style: TextStyle(fontSize: 28 ),))
        );  
  }
}