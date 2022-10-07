import 'package:boutiquedebolo/cadastro.dart';
import 'package:boutiquedebolo/consulta.dart';
import 'package:boutiquedebolo/main.dart';
import 'package:flutter/material.dart';

class Campo extends StatelessWidget {
  TextEditingController controlador;
  String rotulo;
  Campo({Key? key, required this.controlador, required this.rotulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8),
        child: TextField(
          decoration:
              InputDecoration(labelText: rotulo, border: OutlineInputBorder()),
          controller: controlador,
        ));
  }
}

class Menu extends StatelessWidget {
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            child: Text("Início"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Main()));
            }),
        TextButton(
            child: Text("Cadastrar"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TelaCad()));
            }),
        TextButton(
            child: Text("Consultar"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TelaCon()));
            }),
      ],
    );
  }
}

//método para operação de cadastro
void showSuccessMessage(BuildContext context, Widget transf) async {
  await showDialog(
    context: context,
    builder: (ctx) => AlertDialog(
      title: Text("Transação Efetuada com sucesso :)"),
      actions: <Widget>[
        FloatingActionButton(
            onPressed: () => Navigator.pop(ctx), child: Text("Ok"))
      ],
    ),
  );
  Navigator.pop(context, transf);
}
