import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_note.dart';
import 'package:flutter_application_1/pages/add_page.dart';
import 'package:flutter_application_1/pages/note_page.dart';
import 'package:flutter_application_1/models/note.dart';

final List<Tovar> list = <Tovar>[
  Tovar(url:'../2.webp', price:'999₽', discription:'АМНЯМ 1'), 
  Tovar(url:'../4.webp', price:'9999₽', discription:'АМНЯМ 2')
];

final List<Tovar> favorite = <Tovar>[];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void _removeTovar(int index) {
    setState(() {
      list.removeAt(index);
    });
  }

  void _addToFavorite(int index) {
    setState(() {
      favorite.add(list[index]);
    });
  }

  void _addTovar(Tovar tovar) {
    setState(() {
      list.add(tovar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('ТОВАРЫ', style: TextStyle(fontSize: 24, color: Colors.white),),), backgroundColor: Colors.black,
      ),
      body: Padding(padding: const EdgeInsets.all(8),
        child: ListView.builder(
        padding: const EdgeInsets.all(8),
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => NotePage(tovar: list[index]),),
              ),
              child: ItemNote(
                tovar: list[index],
                onRemove: () => _removeTovar(index),
                onFavorite: () => _addToFavorite(index),
                ),
              );
          },
        ),
      ), backgroundColor:  const Color.fromARGB(255, 139, 147, 255),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddPage(onAdd: _addTovar, tovar: list[0]),),
          
      ),
      foregroundColor: Colors.white,
      backgroundColor: const Color.fromARGB(255,255, 113, 205),
      child: const Icon(Icons.add),
      ),
    );
  }
}