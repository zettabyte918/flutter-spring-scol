import 'package:tp70/entities/matier.dart';
import 'package:tp70/entities/student.dart';

class Absence {
  int? absenceId;
  double? absenceNb;
  String? date;
  Student? etudiant;

  Absence(this.absenceNb, this.date, this.etudiant, [this.absenceId]);

  // Factory method to create an Absence object from JSON
  factory Absence.fromJson(Map<String, dynamic> json) {
    return Absence(
        json['absenceNb'],
        json['date'],
        json.containsKey('etudiant')
            ? Student.fromJson(json['etudiant'])
            : null,
        json['absenceId']);
  }

  // Add a method to convert the Absence object to JSON
  Map<String, dynamic> toJson() {
    return {
      'absenceId': absenceId,
      'absenceNb': absenceNb,
      'date': date,
    };
  }
}
