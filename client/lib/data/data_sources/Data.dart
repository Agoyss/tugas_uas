class Data {
  final int id;
  final String ID;
  final String NamaBarang;
  final String TempatBarang;
  final String date;

  Data(
      {required this.id,
      required this.ID,
      required this.NamaBarang,
      required this.TempatBarang,
      required this.date});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      ID: json['id'],
      NamaBarang: json['NamaBarang'],
      TempatBarang: json['TempatBarang'],
      date: json['date'],
    );
  }
}
