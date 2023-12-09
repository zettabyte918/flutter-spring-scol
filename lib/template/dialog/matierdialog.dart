import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tp70/entities/classe.dart';
import 'package:tp70/entities/matier.dart';
import 'package:tp70/entities/student.dart';
import 'package:tp70/services/classeservice.dart';
import 'package:tp70/services/studentservice.dart';

class MatierDialog extends StatefulWidget {
  final Function()? notifyParent;
  Matier? matier;

  MatierDialog({super.key, @required this.notifyParent, this.matier});
  @override
  State<MatierDialog> createState() => _MatierDialogState();
}

class _MatierDialogState extends State<MatierDialog> {
  TextEditingController nameMat = TextEditingController();
  TextEditingController coefMat = TextEditingController();

  String title = "Ajouter Matier";
  bool modif = false;

  late int idMatier;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("hiii");
    if (widget.matier != null) {
      modif = true;
      title = "Modifier matier";
      nameMat.text = (widget.matier!.matiereName).toString();
      coefMat.text = (widget.matier!.matiereCoef).toString();
      idMatier = widget.matier!.matiereId!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text(title),
            TextFormField(
              controller: nameMat,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return "Champs est obligatoire";
                }
                return null;
              },
              decoration: const InputDecoration(labelText: "nom"),
            ),
            TextFormField(
              controller: coefMat,
              decoration: const InputDecoration(labelText: "coef"),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (modif == false) {
                    await addMatier(Matier(nameMat.text, coefMat.text));
                    widget.notifyParent!();
                  } else {
                    await updateMatier(
                        Matier(nameMat.text, coefMat.text, idMatier));
                    widget.notifyParent!();
                  }
                  Navigator.pop(context);
                },
                child: const Text("Ajouter"))
          ],
        ),
      ),
    );
  }
}
