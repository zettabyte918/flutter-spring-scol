import 'package:tp70/entities/matier.dart';
import 'package:tp70/entities/student.dart';

class Absence {
  int? absenceId;
  Student etudiant;
  Matier matiere;
  double absenceNb;
  DateTime date;

  Absence({
    this.absenceId,
    required this.etudiant,
    required this.matiere,
    required this.absenceNb,
    required this.date,
  });

  // Factory method to create an Absence object from JSON
  factory Absence.fromJson(Map<String, dynamic> json) {
    return Absence(
      absenceId: json['absenceId'],
      etudiant: Student.fromJson(json['etudiant']),
      matiere: Matier.fromJson(json['matiere']),
      absenceNb: json['absenceNb'],
      date: DateTime.parse(json['date']),
    );
  }

  // Add a method to convert the Absence object to JSON
  Map<String, dynamic> toJson() {
    return {
      'absenceId': absenceId,
      'etudiant': etudiant.toJson(),
      'matiere': matiere.toJson(),
      'absenceNb': absenceNb,
      'date': date.toIso8601String(),
    };
  }
}
