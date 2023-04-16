import 'package:alura1/models/Transferencia.dart';
import 'package:flutter/material.dart';

import '../components/editor.dart';

const _tituloAppBar = "Criando Transferência";

const _rotuloValor = "Valor";
const _dicaValor = "0.00";

const _rotuloNumeroConta = "Número da conta";
const _dicaNumeroConta = "0000";

const _textoBotaoConfirmar = "Confirmar";

class FormularioTransferenciaPage extends StatefulWidget {
  const FormularioTransferenciaPage({Key? key}) : super(key: key);

  @override
  State<FormularioTransferenciaPage> createState() =>
      _FormularioTransferenciaPageState();
}

class _FormularioTransferenciaPageState
    extends State<FormularioTransferenciaPage> {
  final TextEditingController _controladorNumeroConta = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
              controlador: _controladorNumeroConta,
              dica: _dicaNumeroConta,
              rotulo: _rotuloNumeroConta,
            ),
            Editor(
              controlador: _controladorValor,
              dica: _dicaValor,
              rotulo: _rotuloValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: () {
                _criarTransferencia(context);
              },
              child: const Text(_textoBotaoConfirmar),
            ),
          ],
        ),
      ),
    );
  }

  void _criarTransferencia(BuildContext context){
    final int? numeroConta = int.tryParse(_controladorNumeroConta.text);
    final double? valor = double.tryParse(_controladorValor.text);

    if(numeroConta != null && valor != null){
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
