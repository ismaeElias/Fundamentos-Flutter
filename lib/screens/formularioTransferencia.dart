import 'package:cursoalura/components/editor.dart';
import 'package:cursoalura/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  FormularioTransferencia({Key? key}) : super(key: key);

  final TextEditingController _controllerTextNumConta = TextEditingController();
  final TextEditingController _controllerTextValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando transferencia'),
      ),
      body: Column(
        children: [
          Editor(
            controlador: _controllerTextNumConta,
            rotulo: 'Numero da conta',
            dica: '0000',
          ),
          Editor(
            controlador: _controllerTextValor,
            rotulo: 'Valor',
            dica: '0.00',
            icone: Icons.monetization_on,
          ),
          ElevatedButton(
              onPressed: () => _criaTransferencia(context),
              child: Text('Confirmar'))
        ],
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.parse(_controllerTextNumConta.text);
    final double valor = double.parse(_controllerTextValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
