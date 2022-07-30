class DataHttp {
  final String body;
  final int id;
  final String title;

  DataHttp({
    this.body,
    this.id,
    this.title,
  });

  factory DataHttp.fromJson(Map<String, dynamic> json) {
    return DataHttp(
      body: json['body'],
      id: json['id'],
      title: json['title'],
    );
  }
}
