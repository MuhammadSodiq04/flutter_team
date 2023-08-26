import 'package:flutter/material.dart';
import 'package:flutter_team/ui/profile_screen/sub_screens/create_ads_screen.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile",style: TextStyle(color: Colors.black),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAdsScreen()));
          }, icon: Icon(Icons.add,color: Colors.black,)),
        ],
      ),
    );
  }
}
