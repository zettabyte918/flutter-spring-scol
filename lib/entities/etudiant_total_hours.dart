class EtudiantTotalHours {
  final int etudiantId;
  final double totalHours;

  EtudiantTotalHours({
    required this.etudiantId,
    required this.totalHours,
  });

  factory EtudiantTotalHours.fromJson(Map<String, dynamic> json) {
    return EtudiantTotalHours(
      etudiantId: int.parse(json['etudiantId'].toString()),
      totalHours: json['totalHours'].toDouble(),
    );
  }
}
