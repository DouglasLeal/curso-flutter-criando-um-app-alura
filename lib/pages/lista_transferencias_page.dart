import 'package:flutter/material.dart';
import '../models/Transferencia.dart';

const _tituloAppBar = "Transferências";

class ListaTransferenciasPage extends StatefulWidget {
  final List<Transferencia> _transferencias = [];

  ListaTransferenciasPage({Key? key}) : super(key: key);

  @override
  State<ListaTransferenciasPage> createState() => _ListaTransferenciasPageState();
}

class _ListaTransferenciasPageState extends State<ListaTransferenciasPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(_tituloAppBar)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: widget._transferencias.length,
          itemBuilder: (context, indice) {
            final transferencia = widget._transferencias[indice];
            return ItemTransferencia(transferencia);
          },)
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  ItemTransferencia(this._transferencia, {Key? key}) : super(key: key);

  final Transferencia _transferencia;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

