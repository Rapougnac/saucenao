import 'package:saucenao/src/models/header.dart';

class SauceNaoResult {
  /// The raw data.
  final Map<String, dynamic> data;

  /// The header of this result.
  final Header? header;

  /// The external URLs that refers to the image.
  List<String>? get externalUrls => List.from(data['ext_urls']);

  /// The source of the image. (Name of the
  /// {@template SauceNao.indexes}
  ///  anime/manga/light novel
  /// {@endtemplate}
  /// ). If any.
  String? get source => data['source'];

  /// The anidb id of the
  /// {@macro SauceNao.indexes}
  /// if any.
  int? get anidbId => data['anidb_aid'];

  /// The MyAnimeList id of the
  /// {@macro SauceNao.indexes}
  /// if any.
  int? get myAnimeListId => data['mal_id'];

  /// The anilist id of the
  /// {@macro SauceNao.indexes}
  /// if any.
  int? get anilistId => data['anilist_id'];

  /// The episode, if any.
  String? get episode => data['part'];

  /// The year this
  /// {@macro SauceNao.indexes}
  /// was released.If any.
  String? get year => data['year'];

  /// The estimated time (in the anime) this image was taken, if any.
  String? get estimatedTime => data['est_time'];

  /// The title, if any.
  String? get title => data['title'];

  /// Sorry, I don't know what this is for.
  int? get faId => data['fa_id'];

  /// This one too, I don't know what it is for.
  int? get daid => data['da_id'];

  /// The name of the author, if any.
  String? get authorName => data['author_name'];

  /// The URL to the author, if any.
  String? get authorUrl => data['author_url'];

  /// The creator.
  /// Can be either a [String] or a [List<String>].
  dynamic get creator => data['creator'];

  /// The creator name.
  String? get creatorName => data['creator_name'];

  /// If Twitter is part of [externalUrls], the tweet id
  String? get tweetId => data['tweet_id'];

  /// The Twitter user id, if any.
  String? get twitterUserId => data['twitter_user_id'];

  /// The user that handler this twitter account, if any.
  String? get twitterUserHandles => data['twitter_user_handle'];

  /// The pixiv id.
  String? get pixivId => data['pixiv_id'];

  /// The member name.
  String? get memberName => data['member_name'];

  /// The member id.
  int? get memberId => data['member_id'];

  /// The name in english, if any.
  String? get englishName => data['eng_name'];

  /// The name in japanese, if any.
  String? get japaneseName => data['jp_name'];

  /// The fn id.
  int? get fnId => data['fn_id'];

  /// The fn type.
  String? get fnType => data['fn_type'];

  /// The pawoo id
  String? get pawooId => data['pawoo_id'];

  /// The pawoo user username
  String? get pawooUserName => data['pawoo_user_name'];

  /// The pawoo user account
  String? get pawooUserAccount => data['pawoo_user_acct'];

  /// The pawoo display name
  String? get pawooDisplayName => data['pawoo_display_name'];

  /// The seiga id.
  String? get seigaId => data['seiga_id'];

  const SauceNaoResult(this.header, this.data);

  @override
  String toString() => 'SauceNaoResult(header: $header, data: $data)';
}
