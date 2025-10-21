class Metadata {
  final String? id;
  final String? object;
  final String? livemode;
  final String? created;
  final String? description;

  Metadata({
    this.id,
    this.object,
    this.livemode,
    this.created,
    this.description,
  });

  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(
      id: json['id'] as String?,
      object: json['object'] as String?,
      livemode: json['livemode']?.toString(),
      created: json['created']?.toString(),
      description: json['description'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'object': object,
      'livemode': livemode,
      'created': created,
      'description': description,
    };
  }
}
