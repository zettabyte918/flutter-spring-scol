class Classe {
  int nbreEtud;
  String nomClass;
  int? codClass;

  Classe(this.nbreEtud, this.nomClass, [this.codClass]);

  // Factory method to create a Classe object from JSON
  factory Classe.fromJson(Map<String, dynamic> json) {
    return Classe(
      json['nbreEtud'],
      json['nomClass'],
      json['codClass'],
    );
  }

  // Add a method to convert the Classe object to JSON
  Map<String, dynamic> toJson() {
    return {
      'nbreEtud': nbreEtud,
      'nomClass': nomClass,
      'codClass': codClass,
    };
  }

  @override
  String toString() {
    return nomClass;
  }
}
