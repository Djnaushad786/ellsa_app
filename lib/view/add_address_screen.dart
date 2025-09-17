import 'package:ellsa_app/view/bottom_navigation_bar/my_bottom_bavigation_bar.dart';
import 'package:flutter/material.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hey, nice to meet you!", style: TextStyle(fontSize: 18,color: Colors.grey)),
            const SizedBox(height: 20),
            const Text("See services around", style: TextStyle(fontSize: 32,)),
            const SizedBox(height: 20),
            Image.asset("assets/images/location.png", height: 200),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.my_location,color: Colors.white,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyBottomNavigationBarExample(),));
              },
              label: const Text("Your current location",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
            const SizedBox(height: 15),
            OutlinedButton.icon(
              icon: const Icon(Icons.search,color: Colors.grey,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyBottomNavigationBarExample(),));
              },
              label: const Text("Some other location",style: TextStyle(color: Colors.grey),),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
