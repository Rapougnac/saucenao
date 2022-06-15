class Header {
  final Map<String, dynamic> data;

  /// The similarity of the image to the query.
  String? get similarity => data['similarity'];

  /// The thumbnail of the image.
  String? get thumbnail => data['thumbnail'];

  /// The index id.
  int? get indexId => data['index_id'];

  /// The index name.
  String? get indexName => data['index_name'];

  /// If there's duplicate results.
  int? get dupes => data['dupes'];

  /// If there's hidden results.
  int? get hidden => data['hidden'];

  const Header(this.data);
}