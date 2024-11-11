
import 'package:flutter/material.dart';
import 'package:rarasupriyadi/data/candi_data.dart';
import 'package:rarasupriyadi/widgets/item_card.dart';
import 'package:rarasupriyadi/models/candi.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 1. Buat appbar dengan judul Wisata Candi
      appBar: AppBar(title: Text('Wisata Candi'),),
      // TODO: 2. Buat body dengan GridView.builder
      body: GridView.builder(
        padding: EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: candiList.length,
        itemBuilder: (context, index){
          Candi candi = candiList[index];
          return ItemCard(candi: candi);
        },
      ),
      // TODO: 3. Buat ItemCard sebagai return vale dari GridView.builder
    );
  }
}