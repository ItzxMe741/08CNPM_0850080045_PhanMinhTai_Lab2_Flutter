import 'package:flutter/material.dart';
import 'package:project_flutter/DulieuSanpham.dart';

class FruitDetail extends StatelessWidget {
  final DulieuSanpham phoneDataModel;

  const FruitDetail({Key? key, required this.phoneDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(phoneDataModel.name),),
      body: Column(
        children: [
          Image.network(phoneDataModel.ImageUrl),
          SizedBox(
            height: 10,
          ),
          Text(phoneDataModel.desc,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),
    );
  }
}