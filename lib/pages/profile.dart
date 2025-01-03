import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key,});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('ПРОФИЛЬ', style: TextStyle(fontSize: 24, color: Colors.white),),), backgroundColor: Colors.black,
      ),
      backgroundColor:  const Color.fromARGB(255, 139, 147, 255),
      body: Padding(padding: const EdgeInsets.all(8),
        child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(color: const Color.fromARGB(255,255, 113, 205), borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.black, width: 3),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(130), // Image radius
                    child: Image.asset('../profile_image.jpg', fit: BoxFit.cover),
                  ),
                )
              ),
              const Padding(
                padding: EdgeInsets.all(0),
                child: Text('Имя: KiberYebok2009', style: TextStyle(fontSize: 24, color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
      ),

    );
  }
}