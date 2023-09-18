import 'package:flutter/material.dart';
import '/model/termin_polaganje.dart';
import 'dart:math';

class AddElement extends StatefulWidget {
  final Function add;

  AddElement(this.add);

  @override
  State<StatefulWidget> createState() => _AddElementtState();
}

class _AddElementtState extends State<AddElement> {
  final _predmetController = TextEditingController();
  final _datumController = TextEditingController();
  final _vremeController = TextEditingController();


  void _submitData() {
    if (_datumController.text.isEmpty) {
      return;
    }
    final predmet = _predmetController.text;
    final datum = _datumController.text;
    final vreme = _vremeController.text;

    if (predmet.isEmpty || datum.isEmpty) {
      return;
    }
    final neew = Termin("${Random().nextInt(100) + 1}", predmet, datum, vreme);
    var addItem = widget.add(neew);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          TextField(
            controller: _predmetController,
            decoration: InputDecoration(labelText: "Predmet"),
            onSubmitted: (_) => _submitData(),
          ),
          TextField(
            controller: _datumController,
            decoration: InputDecoration(labelText: "Datum"),
            keyboardType: TextInputType.datetime,
            onSubmitted: (_) => _submitData(),
          ),
          TextField(
            controller: _vremeController,
            decoration: InputDecoration(labelText: "Vreme"),
            keyboardType: TextInputType.datetime,
            onSubmitted: (_) => _submitData(),
          ),
          ElevatedButton(
            child: Text("Dodaj termin"),
            onPressed: _submitData,
          ),
        ],
      ),
    );
  }
}
