import 'package:flutter/material.dart';
import 'package:project/emoji.dart/execisesTile.dart';
import 'package:project/emoji.dart/face.dart';
class FistMac extends StatefulWidget {
  const FistMac({super.key});

  @override
  State<FistMac> createState() => _FistMacState();
}

class _FistMacState extends State<FistMac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      bottomNavigationBar: BottomNavigationBar(items: 
      [BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.message),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: '')
      ],
      ),
      body: SafeArea(
        child: Column(
          children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal:25.0),
           child: Column(
            children: [ Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
           const Text('Hi, Komron!',
        style: TextStyle( 
            color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
        ),
        ),
        SizedBox(
            height: 8,
             ),
              Text('16-January, 2022',
               style: TextStyle(color: Color.fromARGB(255, 253, 208, 141)), ),
                ],),
        Container(
        decoration: BoxDecoration(
            color: Colors.orange[300],
              borderRadius: BorderRadius.circular(12)
                ),
               padding: EdgeInsets.all(12),
                 child: Icon(Icons.notifications,
                   color: Colors.white,
        ),
        )      ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange[300],
                  borderRadius: BorderRadius.circular(12),
                    ),
                     padding: EdgeInsets.all(12),
            child: Row(
             children:const [Icon(Icons.search,color: Colors.white,),
               SizedBox(
                 width: 5,
                  ),
                   Text('Search',
                    style: TextStyle(color: Colors.white),
            )
            ],
            ),
            ),
        const SizedBox(
              height: 25,
              ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
               Text('How do you feel?',
                style: TextStyle( 
                  color: Colors.white,
                    fontSize: 18,
                      fontWeight: FontWeight.bold
                 ),
                 ),
                 Icon(Icons.more_horiz,color: Colors.white,
                 )
            ],
        ),
        const SizedBox(
              height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Column(
                     children: [
                       Face(
                        facetion: '😫',
                       ),
                       SizedBox(
                        height: 8,
                       ),
                       Text('Bad',style: TextStyle(color: Colors.white),)
                     ],
                   ),
                    Column(
                     children: [
                       Face(
                        facetion: '🙂',
                       ),
                       SizedBox(
                        height: 8,
                       ),
                       Text('Fine',style: TextStyle(color: Colors.white),)
                     ],
                   ),
                    Column(
                     children: [
                       Face(
                        facetion: '😄',
                       ),
                       SizedBox(
                        height: 8,
                       ),
                       Text('Well',style: TextStyle(color: Colors.white),)
                     ],
                   ),
                    Column(
                     children: [
                       Face(
                        facetion: '🥳',
                       ),
                       SizedBox(
                        height: 8,
                       ),
                       Text('Excellent',style: TextStyle(color: Colors.white),)
                     ],
                   ),
                    Column(
                     children: [
                       Face(
                        facetion: '😡',
                       ),
                       SizedBox(
                        height: 8,
                       ),
                       Text('Angry',style: TextStyle(color: Colors.white),)
                     ],
                   ),
                ],
              ),],
           ),
         ),
         SizedBox(
          height: 25,
         ),
            Expanded(child: 
            Container(
             padding: EdgeInsets.all(25),
              color: Colors.grey[100],
              child: Center(
                child: Column(
                  children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Exercises',style:
                         TextStyle(fontWeight: FontWeight.bold,
                         fontSize: 20
                         ),),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                   Expanded(
                    child: ListView(
                      children: const[
                        ExecisesTile(
                          icon: Icons.favorite,
                           exercisesName: 'Speaking skills',
                            exercisesOfNumber: 16,
                             color: Colors.orange,
                        ),
                         ExecisesTile(
                           icon: Icons.person,
                            exercisesName: 'Reading skills',
                              exercisesOfNumber: 8,
                               color: Colors.green,
                        ),
                         ExecisesTile(
                           icon: Icons.star,
                            exercisesName: 'Writing skills',
                              exercisesOfNumber: 20,
                               color: Colors.pink,
                        ),
                         
                      ],
                    )
                    
                    )
                  ],
                ),
              ),
            ))
        ],
           ),
             ),
             );
  }
}