class Matier {
  int? matiereId;
  String matiereName;

  Matier(this.matiereName, [this.matiereId]);

  // Factory method to create a Classe object from JSON
  factory Matier.fromJson(Map<String, dynamic> json) {
    return Matier(
      json['matiereId'],
      json['matiereName'],
    );
  }

  // Add a method to convert the Classe object to JSON
  Map<String, dynamic> toJson() {
    return {
      'matiereId': matiereId,
      'matiereName': matiereName,
    };
  }

  @override
  String toString() {
    return matiereName;
  }
}
