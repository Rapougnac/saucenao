class Headers {
  /// The raw headers as a map.
  final Map<String, dynamic> rawHeaders;

  String? get userId => rawHeaders['user_id'];

  String? get accountType => rawHeaders['account_type'];

  String? get shortLimit => rawHeaders['short_limit'];

  String? get longLimit => rawHeaders['long_limit'];

  int? get shortRemaining => rawHeaders['short_remaining'];

  int? get longRemaining => rawHeaders['long_remaining'];

  int? get status => rawHeaders['status'];

  String? get resultsRequested => rawHeaders['results_requested'];

  Map<String, Map<String, int>>? get index => rawHeaders['index'].cast<String, Map<String, int>>();

  String? get searchDepth => rawHeaders['search_depth'];

  num? get minimumSimilarity => rawHeaders['minimum_similarity'];

  String? get queryImageDisplay => rawHeaders['query_image_display'];

  String? get queryImage => rawHeaders['query_image'];

  /// The results returned.
  int? get resultsReturned => rawHeaders['results_returned'];

  const Headers(this.rawHeaders);
}