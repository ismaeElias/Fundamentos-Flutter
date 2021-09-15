import 'package:cursoalura/models/transferencia.dart';
import 'package:flutter/material.dart';

class ItemsTransferencias extends StatelessWidget {
  final Transferencia transferencia;

  ItemsTransferencias(this.transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(transferencia.valor.toString()),
      subtitle: Text(transferencia.numeroConta.toString()),
    ));
  }
}
