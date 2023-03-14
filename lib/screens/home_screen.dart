import 'package:flutter/material.dart';

import 'package:pro/screens/detail/plant_detail_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void navigateNextPage(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return const PlantDetails();
    }));
  }

  // void navigateNotePage(BuildContext ctx){
  //   Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
  //     return const NotesHomeScreen();
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pic1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/cam.png', width: 100.0, height: 80.0,),
                  label: const Text('Camera',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/map.png', width: 100.0, height: 80.0,),
                  label: const Text('Plant For You',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PlantDetails()),
                    );
                  },
                  child: ElevatedButton.icon(
                    onPressed: () {
                      navigateNextPage(context);
                    },
                    icon: Image.asset(
                      'assets/plant.png', width: 100.0, height: 80.0,),
                    label: const Text('Plant',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),
                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => const NotesHomeScreen()),
                //     );
                //   },
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/notes.png', width: 100.0, height: 80.0,),
                  label: const Text('Notes',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                //),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
