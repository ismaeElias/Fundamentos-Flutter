import 'package:cursoalura/components/itemsTransferencia.dart';
import 'package:cursoalura/models/transferencia.dart';
import 'package:cursoalura/screens/formularioTransferencia.dart';
import 'package:flutter/material.dart';

class ListaTransferenciaState extends State<ListaTransferencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencias'),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferenciaRecebida = widget._transferencias[indice];
          return ItemsTransferencias(transferenciaRecebida);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then((value) => {
                setState(() {
                  widget._transferencias.add(value);
                })
              });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class ListaTransferencia extends StatefulWidget {
  final List<Transferencia> _transferencias = [];

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}
