import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'package:tp70/entities/classe.dart';
import 'package:tp70/entities/matier.dart';
import 'package:tp70/entities/student.dart';

Future getAllClasses() async {
  Response response =
      await http.get(Uri.parse("http://localhost:8080/class/all"));
  return jsonDecode(response.body);
}

Future getAllMatiers() async {
  Response response =
      await http.get(Uri.parse("http://localhost:8080/matier/all"));
  return jsonDecode(response.body);
}

Future addMatier(Matier matier) async {
  Response response = await http.post(
      Uri.parse("http://localhost:8080/matier/add"),
      headers: {"Content-type": "Application/json"},
      body: jsonEncode(<String, dynamic>{
        "matiereName": matier.matiereName,
        "matiereCoef": matier.matiereCoef
      }));

  return response.body;
}

Future updateMatier(Matier matier) async {
  Response response =
      await http.put(Uri.parse("http://localhost:8080/matier/update"),
          headers: {"Content-type": "Application/json"},
          body: jsonEncode(<String, dynamic>{
            "matiereId": matier.matiereId,
            "matiereName": matier.matiereName,
            "matiereCoef": matier.matiereCoef
          }));

  return response.body;
}

Future deleteMatier(int id) {
  return http.delete(Uri.parse("http://localhost:8080/matier/delete?id=${id}"));
}

Future deleteClass(int id) {
  return http.delete(Uri.parse("http://localhost:8080/class/delete?id=${id}"));
}

Future addClass(Classe classe) async {
  Response response = await http.post(
      Uri.parse("http://localhost:8080/class/add"),
      headers: {"Content-type": "Application/json"},
      body: jsonEncode(<String, dynamic>{
        "nomClass": classe.nomClass,
        "nbreEtud": classe.nbreEtud
      }));

  return response.body;
}

Future updateClasse(Classe classe) async {
  Response response =
      await http.put(Uri.parse("http://localhost:8080/class/update"),
          headers: {"Content-type": "Application/json"},
          body: jsonEncode(<String, dynamic>{
            "codClass": classe.codClass,
            "nomClass": classe.nomClass,
            "nbreEtud": classe.nbreEtud
          }));

  return response.body;
}
