class SauceNaoException implements Exception {
  SauceNaoException(this.message);

  final String message;

  @override
  String toString() => 'SauceNaoException: $message';
}