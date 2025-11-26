import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_response_model.g.dart';

@JsonSerializable()
class CoinResponseModel {
  @JsonKey(name: "id")
  Id id;
  @JsonKey(name: "symbol")
  String symbol;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "web_slug")
  Id webSlug;
  @JsonKey(name: "asset_platform_id")
  dynamic assetPlatformId;
  @JsonKey(name: "platforms")
  Platforms platforms;
  @JsonKey(name: "detail_platforms")
  DetailPlatforms detailPlatforms;
  @JsonKey(name: "block_time_in_minutes")
  int blockTimeInMinutes;
  @JsonKey(name: "hashing_algorithm")
  String hashingAlgorithm;
  @JsonKey(name: "categories")
  List<String> categories;
  @JsonKey(name: "preview_listing")
  bool previewListing;
  @JsonKey(name: "public_notice")
  dynamic publicNotice;
  @JsonKey(name: "additional_notices")
  List<dynamic> additionalNotices;
  @JsonKey(name: "localization")
  Tion localization;
  @JsonKey(name: "description")
  Tion description;
  @JsonKey(name: "links")
  Links links;
  @JsonKey(name: "image")
  Image image;
  @JsonKey(name: "country_origin")
  String countryOrigin;
  @JsonKey(name: "genesis_date")
  DateTime genesisDate;
  @JsonKey(name: "sentiment_votes_up_percentage")
  double sentimentVotesUpPercentage;
  @JsonKey(name: "sentiment_votes_down_percentage")
  double sentimentVotesDownPercentage;
  @JsonKey(name: "watchlist_portfolio_users")
  int watchlistPortfolioUsers;
  @JsonKey(name: "market_cap_rank")
  int marketCapRank;
  @JsonKey(name: "market_data")
  MarketData marketData;
  @JsonKey(name: "community_data")
  CommunityData communityData;
  @JsonKey(name: "developer_data")
  DeveloperData developerData;
  @JsonKey(name: "status_updates")
  List<dynamic> statusUpdates;
  @JsonKey(name: "last_updated")
  DateTime lastUpdated;
  @JsonKey(name: "tickers")
  List<Ticker> tickers;

  CoinResponseModel({
    required this.id,
    required this.symbol,
    required this.name,
    required this.webSlug,
    required this.assetPlatformId,
    required this.platforms,
    required this.detailPlatforms,
    required this.blockTimeInMinutes,
    required this.hashingAlgorithm,
    required this.categories,
    required this.previewListing,
    required this.publicNotice,
    required this.additionalNotices,
    required this.localization,
    required this.description,
    required this.links,
    required this.image,
    required this.countryOrigin,
    required this.genesisDate,
    required this.sentimentVotesUpPercentage,
    required this.sentimentVotesDownPercentage,
    required this.watchlistPortfolioUsers,
    required this.marketCapRank,
    required this.marketData,
    required this.communityData,
    required this.developerData,
    required this.statusUpdates,
    required this.lastUpdated,
    required this.tickers,
  });

  factory CoinResponseModel.fromJson(Map<String, dynamic> json) => _$CoinResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoinResponseModelToJson(this);
}

@JsonSerializable()
class CommunityData {
  @JsonKey(name: "facebook_likes")
  dynamic facebookLikes;
  @JsonKey(name: "reddit_average_posts_48h")
  int redditAveragePosts48H;
  @JsonKey(name: "reddit_average_comments_48h")
  int redditAverageComments48H;
  @JsonKey(name: "reddit_subscribers")
  int redditSubscribers;
  @JsonKey(name: "reddit_accounts_active_48h")
  int redditAccountsActive48H;
  @JsonKey(name: "telegram_channel_user_count")
  dynamic telegramChannelUserCount;

  CommunityData({
    required this.facebookLikes,
    required this.redditAveragePosts48H,
    required this.redditAverageComments48H,
    required this.redditSubscribers,
    required this.redditAccountsActive48H,
    required this.telegramChannelUserCount,
  });

  factory CommunityData.fromJson(Map<String, dynamic> json) => _$CommunityDataFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityDataToJson(this);
}

@JsonSerializable()
class Tion {
  @JsonKey(name: "en")
  String en;
  @JsonKey(name: "zh")
  String zh;
  @JsonKey(name: "zh-tw")
  String zhTw;
  @JsonKey(name: "de")
  String de;
  @JsonKey(name: "fr")
  String fr;
  @JsonKey(name: "es")
  String es;
  @JsonKey(name: "ja")
  String ja;
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "ru")
  String ru;
  @JsonKey(name: "ko")
  String ko;
  @JsonKey(name: "ar")
  String ar;
  @JsonKey(name: "th")
  String th;
  @JsonKey(name: "vi")
  String vi;
  @JsonKey(name: "it")
  String it;
  @JsonKey(name: "pl")
  String pl;
  @JsonKey(name: "tr")
  String tr;
  @JsonKey(name: "hu")
  String hu;
  @JsonKey(name: "nl")
  String nl;
  @JsonKey(name: "ro")
  String ro;
  @JsonKey(name: "sv")
  String sv;
  @JsonKey(name: "cs")
  String cs;
  @JsonKey(name: "da")
  String da;
  @JsonKey(name: "el")
  String el;
  @JsonKey(name: "hi")
  String hi;
  @JsonKey(name: "no")
  String no;
  @JsonKey(name: "sk")
  String sk;
  @JsonKey(name: "uk")
  String uk;
  @JsonKey(name: "he")
  String he;
  @JsonKey(name: "fi")
  String fi;
  @JsonKey(name: "bg")
  String bg;
  @JsonKey(name: "hr")
  String hr;
  @JsonKey(name: "lt")
  String lt;
  @JsonKey(name: "sl")
  String sl;
  @JsonKey(name: "pt")
  String pt;

  Tion({
    required this.en,
    required this.zh,
    required this.zhTw,
    required this.de,
    required this.fr,
    required this.es,
    required this.ja,
    required this.id,
    required this.ru,
    required this.ko,
    required this.ar,
    required this.th,
    required this.vi,
    required this.it,
    required this.pl,
    required this.tr,
    required this.hu,
    required this.nl,
    required this.ro,
    required this.sv,
    required this.cs,
    required this.da,
    required this.el,
    required this.hi,
    required this.no,
    required this.sk,
    required this.uk,
    required this.he,
    required this.fi,
    required this.bg,
    required this.hr,
    required this.lt,
    required this.sl,
    required this.pt,
  });

  factory Tion.fromJson(Map<String, dynamic> json) => _$TionFromJson(json);

  Map<String, dynamic> toJson() => _$TionToJson(this);
}

@JsonSerializable()
class DetailPlatforms {
  @JsonKey(name: "")
  Empty empty;

  DetailPlatforms({
    required this.empty,
  });

  factory DetailPlatforms.fromJson(Map<String, dynamic> json) => _$DetailPlatformsFromJson(json);

  Map<String, dynamic> toJson() => _$DetailPlatformsToJson(this);
}

@JsonSerializable()
class Empty {
  @JsonKey(name: "decimal_place")
  dynamic decimalPlace;
  @JsonKey(name: "contract_address")
  String contractAddress;

  Empty({
    required this.decimalPlace,
    required this.contractAddress,
  });

  factory Empty.fromJson(Map<String, dynamic> json) => _$EmptyFromJson(json);

  Map<String, dynamic> toJson() => _$EmptyToJson(this);
}

@JsonSerializable()
class DeveloperData {
  @JsonKey(name: "forks")
  int forks;
  @JsonKey(name: "stars")
  int stars;
  @JsonKey(name: "subscribers")
  int subscribers;
  @JsonKey(name: "total_issues")
  int totalIssues;
  @JsonKey(name: "closed_issues")
  int closedIssues;
  @JsonKey(name: "pull_requests_merged")
  int pullRequestsMerged;
  @JsonKey(name: "pull_request_contributors")
  int pullRequestContributors;
  @JsonKey(name: "code_additions_deletions_4_weeks")
  CodeAdditionsDeletions4Weeks codeAdditionsDeletions4Weeks;
  @JsonKey(name: "commit_count_4_weeks")
  int commitCount4Weeks;
  @JsonKey(name: "last_4_weeks_commit_activity_series")
  List<dynamic> last4WeeksCommitActivitySeries;

  DeveloperData({
    required this.forks,
    required this.stars,
    required this.subscribers,
    required this.totalIssues,
    required this.closedIssues,
    required this.pullRequestsMerged,
    required this.pullRequestContributors,
    required this.codeAdditionsDeletions4Weeks,
    required this.commitCount4Weeks,
    required this.last4WeeksCommitActivitySeries,
  });

  factory DeveloperData.fromJson(Map<String, dynamic> json) => _$DeveloperDataFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperDataToJson(this);
}

@JsonSerializable()
class CodeAdditionsDeletions4Weeks {
  @JsonKey(name: "additions")
  int additions;
  @JsonKey(name: "deletions")
  int deletions;

  CodeAdditionsDeletions4Weeks({
    required this.additions,
    required this.deletions,
  });

  factory CodeAdditionsDeletions4Weeks.fromJson(Map<String, dynamic> json) => _$CodeAdditionsDeletions4WeeksFromJson(json);

  Map<String, dynamic> toJson() => _$CodeAdditionsDeletions4WeeksToJson(this);
}

enum Id {
  @JsonValue("binancecoin")
  BINANCECOIN,
  @JsonValue("bitcoin")
  BITCOIN,
  @JsonValue("ethereum")
  ETHEREUM,
  @JsonValue("solana")
  SOLANA
}

@JsonSerializable()
class Image {
  @JsonKey(name: "thumb")
  String thumb;
  @JsonKey(name: "small")
  String small;
  @JsonKey(name: "large")
  String large;

  Image({
    required this.thumb,
    required this.small,
    required this.large,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Links {
  @JsonKey(name: "homepage")
  List<String> homepage;
  @JsonKey(name: "whitepaper")
  String whitepaper;
  @JsonKey(name: "blockchain_site")
  List<String> blockchainSite;
  @JsonKey(name: "official_forum_url")
  List<String> officialForumUrl;
  @JsonKey(name: "chat_url")
  List<dynamic> chatUrl;
  @JsonKey(name: "announcement_url")
  List<dynamic> announcementUrl;
  @JsonKey(name: "snapshot_url")
  dynamic snapshotUrl;
  @JsonKey(name: "twitter_screen_name")
  Id twitterScreenName;
  @JsonKey(name: "facebook_username")
  String facebookUsername;
  @JsonKey(name: "bitcointalk_thread_identifier")
  dynamic bitcointalkThreadIdentifier;
  @JsonKey(name: "telegram_channel_identifier")
  String telegramChannelIdentifier;
  @JsonKey(name: "subreddit_url")
  String subredditUrl;
  @JsonKey(name: "repos_url")
  ReposUrl reposUrl;

  Links({
    required this.homepage,
    required this.whitepaper,
    required this.blockchainSite,
    required this.officialForumUrl,
    required this.chatUrl,
    required this.announcementUrl,
    required this.snapshotUrl,
    required this.twitterScreenName,
    required this.facebookUsername,
    required this.bitcointalkThreadIdentifier,
    required this.telegramChannelIdentifier,
    required this.subredditUrl,
    required this.reposUrl,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class ReposUrl {
  @JsonKey(name: "github")
  List<String> github;
  @JsonKey(name: "bitbucket")
  List<dynamic> bitbucket;

  ReposUrl({
    required this.github,
    required this.bitbucket,
  });

  factory ReposUrl.fromJson(Map<String, dynamic> json) => _$ReposUrlFromJson(json);

  Map<String, dynamic> toJson() => _$ReposUrlToJson(this);
}

@JsonSerializable()
class MarketData {
  @JsonKey(name: "current_price")
  Map<String, double> currentPrice;
  @JsonKey(name: "total_value_locked")
  dynamic totalValueLocked;
  @JsonKey(name: "mcap_to_tvl_ratio")
  dynamic mcapToTvlRatio;
  @JsonKey(name: "fdv_to_tvl_ratio")
  dynamic fdvToTvlRatio;
  @JsonKey(name: "roi")
  dynamic roi;
  @JsonKey(name: "ath")
  Map<String, double> ath;
  @JsonKey(name: "ath_change_percentage")
  Map<String, double> athChangePercentage;
  @JsonKey(name: "ath_date")
  Map<String, DateTime> athDate;
  @JsonKey(name: "atl")
  Map<String, double> atl;
  @JsonKey(name: "atl_change_percentage")
  Map<String, double> atlChangePercentage;
  @JsonKey(name: "atl_date")
  Map<String, DateTime> atlDate;
  @JsonKey(name: "market_cap")
  Map<String, double> marketCap;
  @JsonKey(name: "market_cap_rank")
  int marketCapRank;
  @JsonKey(name: "fully_diluted_valuation")
  Map<String, double> fullyDilutedValuation;
  @JsonKey(name: "market_cap_fdv_ratio")
  int marketCapFdvRatio;
  @JsonKey(name: "total_volume")
  Map<String, double> totalVolume;
  @JsonKey(name: "high_24h")
  Map<String, double> high24H;
  @JsonKey(name: "low_24h")
  Map<String, double> low24H;
  @JsonKey(name: "price_change_24h")
  double priceChange24H;
  @JsonKey(name: "price_change_percentage_24h")
  double priceChangePercentage24H;
  @JsonKey(name: "price_change_percentage_7d")
  double priceChangePercentage7D;
  @JsonKey(name: "price_change_percentage_14d")
  double priceChangePercentage14D;
  @JsonKey(name: "price_change_percentage_30d")
  double priceChangePercentage30D;
  @JsonKey(name: "price_change_percentage_60d")
  double priceChangePercentage60D;
  @JsonKey(name: "price_change_percentage_200d")
  double priceChangePercentage200D;
  @JsonKey(name: "price_change_percentage_1y")
  double priceChangePercentage1Y;
  @JsonKey(name: "market_cap_change_24h")
  double marketCapChange24H;
  @JsonKey(name: "market_cap_change_percentage_24h")
  double marketCapChangePercentage24H;
  @JsonKey(name: "price_change_24h_in_currency")
  Map<String, double> priceChange24HInCurrency;
  @JsonKey(name: "price_change_percentage_1h_in_currency")
  Map<String, double> priceChangePercentage1HInCurrency;
  @JsonKey(name: "price_change_percentage_24h_in_currency")
  Map<String, double> priceChangePercentage24HInCurrency;
  @JsonKey(name: "price_change_percentage_7d_in_currency")
  Map<String, double> priceChangePercentage7DInCurrency;
  @JsonKey(name: "price_change_percentage_14d_in_currency")
  Map<String, double> priceChangePercentage14DInCurrency;
  @JsonKey(name: "price_change_percentage_30d_in_currency")
  Map<String, double> priceChangePercentage30DInCurrency;
  @JsonKey(name: "price_change_percentage_60d_in_currency")
  Map<String, double> priceChangePercentage60DInCurrency;
  @JsonKey(name: "price_change_percentage_200d_in_currency")
  Map<String, double> priceChangePercentage200DInCurrency;
  @JsonKey(name: "price_change_percentage_1y_in_currency")
  Map<String, double> priceChangePercentage1YInCurrency;
  @JsonKey(name: "market_cap_change_24h_in_currency")
  Map<String, double> marketCapChange24HInCurrency;
  @JsonKey(name: "market_cap_change_percentage_24h_in_currency")
  Map<String, double> marketCapChangePercentage24HInCurrency;
  @JsonKey(name: "total_supply")
  int totalSupply;
  @JsonKey(name: "max_supply")
  int maxSupply;
  @JsonKey(name: "max_supply_infinite")
  bool maxSupplyInfinite;
  @JsonKey(name: "circulating_supply")
  int circulatingSupply;
  @JsonKey(name: "last_updated")
  DateTime lastUpdated;

  MarketData({
    required this.currentPrice,
    required this.totalValueLocked,
    required this.mcapToTvlRatio,
    required this.fdvToTvlRatio,
    required this.roi,
    required this.ath,
    required this.athChangePercentage,
    required this.athDate,
    required this.atl,
    required this.atlChangePercentage,
    required this.atlDate,
    required this.marketCap,
    required this.marketCapRank,
    required this.fullyDilutedValuation,
    required this.marketCapFdvRatio,
    required this.totalVolume,
    required this.high24H,
    required this.low24H,
    required this.priceChange24H,
    required this.priceChangePercentage24H,
    required this.priceChangePercentage7D,
    required this.priceChangePercentage14D,
    required this.priceChangePercentage30D,
    required this.priceChangePercentage60D,
    required this.priceChangePercentage200D,
    required this.priceChangePercentage1Y,
    required this.marketCapChange24H,
    required this.marketCapChangePercentage24H,
    required this.priceChange24HInCurrency,
    required this.priceChangePercentage1HInCurrency,
    required this.priceChangePercentage24HInCurrency,
    required this.priceChangePercentage7DInCurrency,
    required this.priceChangePercentage14DInCurrency,
    required this.priceChangePercentage30DInCurrency,
    required this.priceChangePercentage60DInCurrency,
    required this.priceChangePercentage200DInCurrency,
    required this.priceChangePercentage1YInCurrency,
    required this.marketCapChange24HInCurrency,
    required this.marketCapChangePercentage24HInCurrency,
    required this.totalSupply,
    required this.maxSupply,
    required this.maxSupplyInfinite,
    required this.circulatingSupply,
    required this.lastUpdated,
  });

  factory MarketData.fromJson(Map<String, dynamic> json) => _$MarketDataFromJson(json);

  Map<String, dynamic> toJson() => _$MarketDataToJson(this);
}

@JsonSerializable()
class Platforms {
  @JsonKey(name: "")
  String empty;

  Platforms({
    required this.empty,
  });

  factory Platforms.fromJson(Map<String, dynamic> json) => _$PlatformsFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformsToJson(this);
}

@JsonSerializable()
class Ticker {
  @JsonKey(name: "base")
  Base base;
  @JsonKey(name: "target")
  String target;
  @JsonKey(name: "market")
  Market market;
  @JsonKey(name: "last")
  double last;
  @JsonKey(name: "volume")
  double volume;
  @JsonKey(name: "converted_last")
  Map<String, double> convertedLast;
  @JsonKey(name: "converted_volume")
  Map<String, double> convertedVolume;
  @JsonKey(name: "trust_score")
  TrustScore trustScore;
  @JsonKey(name: "bid_ask_spread_percentage")
  double bidAskSpreadPercentage;
  @JsonKey(name: "timestamp")
  DateTime timestamp;
  @JsonKey(name: "last_traded_at")
  DateTime lastTradedAt;
  @JsonKey(name: "last_fetch_at")
  DateTime lastFetchAt;
  @JsonKey(name: "is_anomaly")
  bool isAnomaly;
  @JsonKey(name: "is_stale")
  bool isStale;
  @JsonKey(name: "trade_url")
  String? tradeUrl;
  @JsonKey(name: "token_info_url")
  dynamic tokenInfoUrl;
  @JsonKey(name: "coin_id")
  Id coinId;
  @JsonKey(name: "target_coin_id")
  TargetCoinId? targetCoinId;
  @JsonKey(name: "coin_mcap_usd")
  double coinMcapUsd;

  Ticker({
    required this.base,
    required this.target,
    required this.market,
    required this.last,
    required this.volume,
    required this.convertedLast,
    required this.convertedVolume,
    required this.trustScore,
    required this.bidAskSpreadPercentage,
    required this.timestamp,
    required this.lastTradedAt,
    required this.lastFetchAt,
    required this.isAnomaly,
    required this.isStale,
    required this.tradeUrl,
    required this.tokenInfoUrl,
    required this.coinId,
    this.targetCoinId,
    required this.coinMcapUsd,
  });

  factory Ticker.fromJson(Map<String, dynamic> json) => _$TickerFromJson(json);

  Map<String, dynamic> toJson() => _$TickerToJson(this);
}

enum Base {
  @JsonValue("BNB")
  BNB,
  @JsonValue("BTC")
  BTC,
  @JsonValue("ETH")
  ETH,
  @JsonValue("SOL")
  SOL,
  @JsonValue("XBT")
  XBT
}

@JsonSerializable()
class Market {
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "identifier")
  String identifier;
  @JsonKey(name: "has_trading_incentive")
  bool hasTradingIncentive;

  Market({
    required this.name,
    required this.identifier,
    required this.hasTradingIncentive,
  });

  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);

  Map<String, dynamic> toJson() => _$MarketToJson(this);
}

enum TargetCoinId {
  @JsonValue("bitcoin")
  BITCOIN,
  @JsonValue("paypal-usd")
  PAYPAL_USD,
  @JsonValue("societe-generale-forge-eurcv")
  SOCIETE_GENERALE_FORGE_EURCV,
  @JsonValue("tether")
  TETHER,
  @JsonValue("usd1-wlfi")
  USD1_WLFI,
  @JsonValue("usd-coin")
  USD_COIN
}

enum TrustScore {
  @JsonValue("green")
  GREEN
}
