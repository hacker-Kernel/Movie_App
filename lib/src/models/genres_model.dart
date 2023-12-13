class Gerne {
  final int id;
  final String name;

  Gerne(
    this.id,
    this.name,
  );

  Gerne.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        name = json["name"];
}
