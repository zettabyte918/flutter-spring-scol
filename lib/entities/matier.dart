class Matier {
  int? matiereId;
  String matiereName;
  String matiereCoef;

  Matier(this.matiereName, this.matiereCoef, [this.matiereId]);

  // Factory method to create a Classe object from JSON
  factory Matier.fromJson(Map<String, dynamic> json) {
    return Matier(
      json['matiereId'],
      json['matiereName'],
      json['matiereCoef'],
    );
  }

  // Add a method to convert the Classe object to JSON
  Map<String, dynamic> toJson() {
    return {
      'matiereId': matiereId,
      'matiereName': matiereName,
      'matiereCoef': matiereCoef,
    };
  }

  @override
  String toString() {
    return matiereName;
  }
}
