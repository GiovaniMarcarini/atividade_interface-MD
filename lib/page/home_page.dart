
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: _criarAppBar(),
      body: Container(),
    );
  }

  AppBar _criarAppBar(){
    return AppBar(
      centerTitle: false,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      title: const Text('Atividade Interface'),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.sync)
        )
      ],
    );
  }
}