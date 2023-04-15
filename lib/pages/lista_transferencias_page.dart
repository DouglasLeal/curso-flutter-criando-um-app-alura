


import 'package:flutter/material.dart';

class ListaTransferenciasPage extends StatefulWidget {
  const ListaTransferenciasPage({Key? key}) : super(key: key);

  @override
  State<ListaTransferenciasPage> createState() => _ListaTransferenciasPageState();
}

class _ListaTransferenciasPageState extends State<ListaTransferenciasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Transferências")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),
    );
  }
}
