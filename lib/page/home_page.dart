
import 'dart:math';

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
      body: _criarBody(),
    );
  }

  AppBar _criarAppBar(){
    return AppBar(
      centerTitle: false,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      title: const Text('Atividade Interface'),
      actions: [
        IconButton(
            onPressed: () => setState(() {}),
            icon: const Icon(Icons.sync)
        )
      ],
    );
  }

  Widget _criarBody(){
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: CustomCard(label: 'linha 1 | coluna 1'),
            ),
            Expanded(
              child: CustomCard(label: 'linha 1 | coluna 2'),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: CustomCard(label: 'linha 2 | coluna 1'),
            ),
            Expanded(
              child: CustomCard(label: 'linha 2 | coluna 2'),
            ),
            Expanded(
              child: CustomCard(label: 'linha 2 | coluna 3'),
            ),
          ],
        ),
      ],
    );
  }
}

class CustomCard extends StatelessWidget{
  final String label;

  const CustomCard({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Card(
      color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
      child: SizedBox(
        height: 80,
        child:  Center(
          child: Text(label),
        ),
      ),
    );
  }

}