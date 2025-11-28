import 'package:freezed_annotation/freezed_annotation.dart';

part 'coin_response_model.g.dart';

@JsonSerializable()
class CoinResponseModel {
  @JsonKey(name: "id")
  final String id;
  @JsonKey(name: "symbol")
  final String? symbol;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "web_slug")
  final Id? webSlug;
  @JsonKey(name: "asset_platform_id")
  final dynamic assetPlatformId;
  @JsonKey(name: "platforms")
  final Platforms? platforms;
  @JsonKey(name: "detail_platforms")
  final DetailPlatforms? detailPlatforms;
  @JsonKey(name: "block_time_in_minutes")
  final int? blockTimeInMinutes;
  @JsonKey(name: "hashing_algorithm")
  final String? hashingAlgorithm;
  @JsonKey(name: "categories")
  final List<String>? categories;
  @JsonKey(name: "preview_listing")
  final bool? previewListing;
  @JsonKey(name: "public_notice")
  final dynamic publicNotice;
  @JsonKey(name: "additional_notices")
  final List<dynamic>? additionalNotices;
  @JsonKey(name: "localization")
  final Tion? localization;
  @JsonKey(name: "description")
  final Tion? description;
  @JsonKey(name: "links")
  final Links? links;
  @JsonKey(name: "image")
  final Image? image;
  @JsonKey(name: "country_origin")
  final String? countryOrigin;
  @JsonKey(name: "genesis_date")
  final DateTime? genesisDate;
  @JsonKey(name: "sentiment_votes_up_percentage")
  final double? sentimentVotesUpPercentage;
  @JsonKey(name: "sentiment_votes_down_percentage")
  final double? sentimentVotesDownPercentage;
  @JsonKey(name: "watchlist_portfolio_users")
  final int? watchlistPortfolioUsers;
  @JsonKey(name: "market_cap_rank")
  final int? marketCapRank;
  @JsonKey(name: "market_data")
  final MarketData? marketData;
  @JsonKey(name: "community_data")
  final CommunityData? communityData;
  @JsonKey(name: "developer_data")
  final DeveloperData? developerData;
  @JsonKey(name: "status_updates")
  final List<dynamic>? statusUpdates;
  @JsonKey(name: "last_updated")
  final DateTime? lastUpdated;
  @JsonKey(name: "tickers")
  final List<Ticker>? tickers;

  CoinResponseModel({
    required this.id,
    this.symbol,
    this.name,
    this.webSlug,
    this.assetPlatformId,
    this.platforms,
    this.detailPlatforms,
    this.blockTimeInMinutes,
    this.hashingAlgorithm,
    this.categories,
    this.previewListing,
    this.publicNotice,
    this.additionalNotices,
    this.localization,
    this.description,
    this.links,
    this.image,
    this.countryOrigin,
    this.genesisDate,
    this.sentimentVotesUpPercentage,
    this.sentimentVotesDownPercentage,
    this.watchlistPortfolioUsers,
    this.marketCapRank,
    this.marketData,
    this.communityData,
    this.developerData,
    this.statusUpdates,
    this.lastUpdated,
    this.tickers,
  });

  factory CoinResponseModel.fromJson(Map<String, dynamic> json) => _$CoinResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoinResponseModelToJson(this);
}

@JsonSerializable()
class CommunityData {
  @JsonKey(name: "facebook_likes")
  final dynamic facebookLikes;
  @JsonKey(name: "reddit_average_posts_48h")
  final int? redditAveragePosts48H;
  @JsonKey(name: "reddit_average_comments_48h")
  final int? redditAverageComments48H;
  @JsonKey(name: "reddit_subscribers")
  final int? redditSubscribers;
  @JsonKey(name: "reddit_accounts_active_48h")
  final int? redditAccountsActive48H;
  @JsonKey(name: "telegram_channel_user_count")
  final dynamic telegramChannelUserCount;

  CommunityData({
    this.facebookLikes,
    this.redditAveragePosts48H,
    this.redditAverageComments48H,
    this.redditSubscribers,
    this.redditAccountsActive48H,
    this.telegramChannelUserCount,
  });

  factory CommunityData.fromJson(Map<String, dynamic> json) => _$CommunityDataFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityDataToJson(this);
}

@JsonSerializable()
class Tion {
  @JsonKey(name: "en")
  final String? en;
  @JsonKey(name: "zh")
  final String? zh;
  @JsonKey(name: "zh-tw")
  final String? zhTw;
  @JsonKey(name: "de")
  final String? de;
  @JsonKey(name: "fr")
  final String? fr;
  @JsonKey(name: "es")
  final String? es;
  @JsonKey(name: "ja")
  final String? ja;
  @JsonKey(name: "id")
  final String? id;
  @JsonKey(name: "ru")
  final String? ru;
  @JsonKey(name: "ko")
  final String? ko;
  @JsonKey(name: "ar")
  final String? ar;
  @JsonKey(name: "th")
  final String? th;
  @JsonKey(name: "vi")
  final String? vi;
  @JsonKey(name: "it")
  final String? it;
  @JsonKey(name: "pl")
  final String? pl;
  @JsonKey(name: "tr")
  final String? tr;
  @JsonKey(name: "hu")
  final String? hu;
  @JsonKey(name: "nl")
  final String? nl;
  @JsonKey(name: "ro")
  final String? ro;
  @JsonKey(name: "sv")
  final String? sv;
  @JsonKey(name: "cs")
  final String? cs;
  @JsonKey(name: "da")
  final String? da;
  @JsonKey(name: "el")
  final String? el;
  @JsonKey(name: "hi")
  final String? hi;
  @JsonKey(name: "no")
  final String? no;
  @JsonKey(name: "sk")
  final String? sk;
  @JsonKey(name: "uk")
  final String? uk;
  @JsonKey(name: "he")
  final String? he;
  @JsonKey(name: "fi")
  final String? fi;
  @JsonKey(name: "bg")
  final String? bg;
  @JsonKey(name: "hr")
  final String? hr;
  @JsonKey(name: "lt")
  final String? lt;
  @JsonKey(name: "sl")
  final String? sl;
  @JsonKey(name: "pt")
  final String? pt;

  Tion({
    this.en,
    this.zh,
    this.zhTw,
    this.de,
    this.fr,
    this.es,
    this.ja,
    this.id,
    this.ru,
    this.ko,
    this.ar,
    this.th,
    this.vi,
    this.it,
    this.pl,
    this.tr,
    this.hu,
    this.nl,
    this.ro,
    this.sv,
    this.cs,
    this.da,
    this.el,
    this.hi,
    this.no,
    this.sk,
    this.uk,
    this.he,
    this.fi,
    this.bg,
    this.hr,
    this.lt,
    this.sl,
    this.pt,
  });

  factory Tion.fromJson(Map<String, dynamic> json) => _$TionFromJson(json);

  Map<String, dynamic> toJson() => _$TionToJson(this);
}

@JsonSerializable()
class DetailPlatforms {
  @JsonKey(name: "")
  final Empty? empty;

  DetailPlatforms({
    this.empty,
  });

  factory DetailPlatforms.fromJson(Map<String, dynamic> json) => _$DetailPlatformsFromJson(json);

  Map<String, dynamic> toJson() => _$DetailPlatformsToJson(this);
}

@JsonSerializable()
class Empty {
  @JsonKey(name: "decimal_place")
  final dynamic decimalPlace;
  @JsonKey(name: "contract_address")
  final String? contractAddress;

  Empty({
    this.decimalPlace,
    this.contractAddress,
  });

  factory Empty.fromJson(Map<String, dynamic> json) => _$EmptyFromJson(json);

  Map<String, dynamic> toJson() => _$EmptyToJson(this);
}

@JsonSerializable()
class DeveloperData {
  @JsonKey(name: "forks")
  final int? forks;
  @JsonKey(name: "stars")
  final int? stars;
  @JsonKey(name: "subscribers")
  final int? subscribers;
  @JsonKey(name: "total_issues")
  final int? totalIssues;
  @JsonKey(name: "closed_issues")
  final int? closedIssues;
  @JsonKey(name: "pull_requests_merged")
  final int? pullRequestsMerged;
  @JsonKey(name: "pull_request_contributors")
  final int? pullRequestContributors;
  @JsonKey(name: "code_additions_deletions_4_weeks")
  final CodeAdditionsDeletions4Weeks? codeAdditionsDeletions4Weeks;
  @JsonKey(name: "commit_count_4_weeks")
  final int? commitCount4Weeks;
  @JsonKey(name: "last_4_weeks_commit_activity_series")
  final List<dynamic>? last4WeeksCommitActivitySeries;

  DeveloperData({
    this.forks,
    this.stars,
    this.subscribers,
    this.totalIssues,
    this.closedIssues,
    this.pullRequestsMerged,
    this.pullRequestContributors,
    this.codeAdditionsDeletions4Weeks,
    this.commitCount4Weeks,
    this.last4WeeksCommitActivitySeries,
  });

  factory DeveloperData.fromJson(Map<String, dynamic> json) => _$DeveloperDataFromJson(json);

  Map<String, dynamic> toJson() => _$DeveloperDataToJson(this);
}

@JsonSerializable()
class CodeAdditionsDeletions4Weeks {
  @JsonKey(name: "additions")
  final int? additions;
  @JsonKey(name: "deletions")
  final int? deletions;

  CodeAdditionsDeletions4Weeks({
    this.additions,
    this.deletions,
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
  SOLANA,
  @JsonValue("tether-gold")
  TETHER_GOLD
}

@JsonSerializable()
class Image {
  @JsonKey(name: "thumb")
  final String? thumb;
  @JsonKey(name: "small")
  final String? small;
  @JsonKey(name: "large")
  final String? large;

  Image({
    this.thumb,
    this.small,
    this.large,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Links {
  @JsonKey(name: "homepage")
  final List<String>? homepage;
  @JsonKey(name: "whitepaper")
  final String? whitepaper;
  @JsonKey(name: "blockchain_site")
  final List<String>? blockchainSite;
  @JsonKey(name: "official_forum_url")
  final List<String>? officialForumUrl;
  @JsonKey(name: "chat_url")
  final List<dynamic>? chatUrl;
  @JsonKey(name: "announcement_url")
  final List<dynamic>? announcementUrl;
  @JsonKey(name: "snapshot_url")
  final dynamic snapshotUrl;
  @JsonKey(name: "twitter_screen_name")
  final Id? twitterScreenName;
  @JsonKey(name: "facebook_username")
  final String? facebookUsername;
  @JsonKey(name: "bitcointalk_thread_identifier")
  final dynamic bitcointalkThreadIdentifier;
  @JsonKey(name: "telegram_channel_identifier")
  final String? telegramChannelIdentifier;
  @JsonKey(name: "subreddit_url")
  final String? subredditUrl;
  @JsonKey(name: "repos_url")
  final ReposUrl? reposUrl;

  Links({
    this.homepage,
    this.whitepaper,
    this.blockchainSite,
    this.officialForumUrl,
    this.chatUrl,
    this.announcementUrl,
    this.snapshotUrl,
    this.twitterScreenName,
    this.facebookUsername,
    this.bitcointalkThreadIdentifier,
    this.telegramChannelIdentifier,
    this.subredditUrl,
    this.reposUrl,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class ReposUrl {
  @JsonKey(name: "github")
  final List<String>? github;
  @JsonKey(name: "bitbucket")
  final List<dynamic>? bitbucket;

  ReposUrl({
    this.github,
    this.bitbucket,
  });

  factory ReposUrl.fromJson(Map<String, dynamic> json) => _$ReposUrlFromJson(json);

  Map<String, dynamic> toJson() => _$ReposUrlToJson(this);
}

@JsonSerializable()
class MarketData {
  @JsonKey(name: "current_price")
  final Map<String, double>? currentPrice;
  @JsonKey(name: "total_value_locked")
  final dynamic totalValueLocked;
  @JsonKey(name: "mcap_to_tvl_ratio")
  final dynamic mcapToTvlRatio;
  @JsonKey(name: "fdv_to_tvl_ratio")
  final dynamic fdvToTvlRatio;
  @JsonKey(name: "roi")
  final dynamic roi;
  @JsonKey(name: "ath")
  final Map<String, double>? ath;
  @JsonKey(name: "ath_change_percentage")
  final Map<String, double>? athChangePercentage;
  @JsonKey(name: "ath_date")
  final Map<String, DateTime>? athDate;
  @JsonKey(name: "atl")
  final Map<String, double>? atl;
  @JsonKey(name: "atl_change_percentage")
  final Map<String, double>? atlChangePercentage;
  @JsonKey(name: "atl_date")
  final Map<String, DateTime>? atlDate;
  @JsonKey(name: "market_cap")
  final Map<String, double>? marketCap;
  @JsonKey(name: "market_cap_rank")
  final int? marketCapRank;
  @JsonKey(name: "fully_diluted_valuation")
  final Map<String, double>? fullyDilutedValuation;
  @JsonKey(name: "market_cap_fdv_ratio")
  final int? marketCapFdvRatio;
  @JsonKey(name: "total_volume")
  final Map<String, double>? totalVolume;
  @JsonKey(name: "high_24h")
  final Map<String, double>? high24H;
  @JsonKey(name: "low_24h")
  final Map<String, double>? low24H;
  @JsonKey(name: "price_change_24h")
  final double? priceChange24H;
  @JsonKey(name: "price_change_percentage_24h")
  final double? priceChangePercentage24H;
  @JsonKey(name: "price_change_percentage_7d")
  final double? priceChangePercentage7D;
  @JsonKey(name: "price_change_percentage_14d")
  final double? priceChangePercentage14D;
  @JsonKey(name: "price_change_percentage_30d")
  final double? priceChangePercentage30D;
  @JsonKey(name: "price_change_percentage_60d")
  final double? priceChangePercentage60D;
  @JsonKey(name: "price_change_percentage_200d")
  final double? priceChangePercentage200D;
  @JsonKey(name: "price_change_percentage_1y")
  final double? priceChangePercentage1Y;
  @JsonKey(name: "market_cap_change_24h")
  final double? marketCapChange24H;
  @JsonKey(name: "market_cap_change_percentage_24h")
  final double? marketCapChangePercentage24H;
  @JsonKey(name: "price_change_24h_in_currency")
  final Map<String, double>? priceChange24HInCurrency;
  @JsonKey(name: "price_change_percentage_1h_in_currency")
  final Map<String, double>? priceChangePercentage1HInCurrency;
  @JsonKey(name: "price_change_percentage_24h_in_currency")
  final Map<String, double>? priceChangePercentage24HInCurrency;
  @JsonKey(name: "price_change_percentage_7d_in_currency")
  final Map<String, double>? priceChangePercentage7DInCurrency;
  @JsonKey(name: "price_change_percentage_14d_in_currency")
  final Map<String, double>? priceChangePercentage14DInCurrency;
  @JsonKey(name: "price_change_percentage_30d_in_currency")
  final Map<String, double>? priceChangePercentage30DInCurrency;
  @JsonKey(name: "price_change_percentage_60d_in_currency")
  final Map<String, double>? priceChangePercentage60DInCurrency;
  @JsonKey(name: "price_change_percentage_200d_in_currency")
  final Map<String, double>? priceChangePercentage200DInCurrency;
  @JsonKey(name: "price_change_percentage_1y_in_currency")
  final Map<String, double>? priceChangePercentage1YInCurrency;
  @JsonKey(name: "market_cap_change_24h_in_currency")
  final Map<String, double>? marketCapChange24HInCurrency;
  @JsonKey(name: "market_cap_change_percentage_24h_in_currency")
  final Map<String, double>? marketCapChangePercentage24HInCurrency;
  @JsonKey(name: "total_supply")
  final int? totalSupply;
  @JsonKey(name: "max_supply")
  final int? maxSupply;
  @JsonKey(name: "max_supply_infinite")
  final bool? maxSupplyInfinite;
  @JsonKey(name: "circulating_supply")
  final int? circulatingSupply;
  @JsonKey(name: "last_updated")
  final DateTime? lastUpdated;

  MarketData({
    this.currentPrice,
    this.totalValueLocked,
    this.mcapToTvlRatio,
    this.fdvToTvlRatio,
    this.roi,
    this.ath,
    this.athChangePercentage,
    this.athDate,
    this.atl,
    this.atlChangePercentage,
    this.atlDate,
    this.marketCap,
    this.marketCapRank,
    this.fullyDilutedValuation,
    this.marketCapFdvRatio,
    this.totalVolume,
    this.high24H,
    this.low24H,
    this.priceChange24H,
    this.priceChangePercentage24H,
    this.priceChangePercentage7D,
    this.priceChangePercentage14D,
    this.priceChangePercentage30D,
    this.priceChangePercentage60D,
    this.priceChangePercentage200D,
    this.priceChangePercentage1Y,
    this.marketCapChange24H,
    this.marketCapChangePercentage24H,
    this.priceChange24HInCurrency,
    this.priceChangePercentage1HInCurrency,
    this.priceChangePercentage24HInCurrency,
    this.priceChangePercentage7DInCurrency,
    this.priceChangePercentage14DInCurrency,
    this.priceChangePercentage30DInCurrency,
    this.priceChangePercentage60DInCurrency,
    this.priceChangePercentage200DInCurrency,
    this.priceChangePercentage1YInCurrency,
    this.marketCapChange24HInCurrency,
    this.marketCapChangePercentage24HInCurrency,
    this.totalSupply,
    this.maxSupply,
    this.maxSupplyInfinite,
    this.circulatingSupply,
    this.lastUpdated,
  });

  factory MarketData.fromJson(Map<String, dynamic> json) => _$MarketDataFromJson(json);

  Map<String, dynamic> toJson() => _$MarketDataToJson(this);
}

@JsonSerializable()
class Platforms {
  @JsonKey(name: "")
  final String? empty;

  Platforms({
    this.empty,
  });

  factory Platforms.fromJson(Map<String, dynamic> json) => _$PlatformsFromJson(json);

  Map<String, dynamic> toJson() => _$PlatformsToJson(this);
}

@JsonSerializable()
class Ticker {
  @JsonKey(name: "base", unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final Base? base;
  @JsonKey(name: "target")
  final String? target;
  @JsonKey(name: "market")
  final Market? market;
  @JsonKey(name: "last")
  final double? last;
  @JsonKey(name: "volume")
  final double? volume;
  @JsonKey(name: "converted_last")
  final Map<String, double>? convertedLast;
  @JsonKey(name: "converted_volume")
  final Map<String, double>? convertedVolume;
  @JsonKey(name: "trust_score")
  final TrustScore? trustScore;
  @JsonKey(name: "bid_ask_spread_percentage")
  final double? bidAskSpreadPercentage;
  @JsonKey(name: "timestamp")
  final DateTime? timestamp;
  @JsonKey(name: "last_traded_at")
  final DateTime? lastTradedAt;
  @JsonKey(name: "last_fetch_at")
  final DateTime? lastFetchAt;
  @JsonKey(name: "is_anomaly")
  final bool? isAnomaly;
  @JsonKey(name: "is_stale")
  final bool? isStale;
  @JsonKey(name: "trade_url")
  final String? tradeUrl;
  @JsonKey(name: "token_info_url")
  final dynamic tokenInfoUrl;
  @JsonKey(name: "coin_id", unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final Id? coinId;
  @JsonKey(name: "target_coin_id", unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final TargetCoinId? targetCoinId;
  @JsonKey(name: "coin_mcap_usd")
  final double? coinMcapUsd;

  Ticker({
    this.base,
    this.target,
    this.market,
    this.last,
    this.volume,
    this.convertedLast,
    this.convertedVolume,
    this.trustScore,
    this.bidAskSpreadPercentage,
    this.timestamp,
    this.lastTradedAt,
    this.lastFetchAt,
    this.isAnomaly,
    this.isStale,
    this.tradeUrl,
    this.tokenInfoUrl,
    this.coinId,
    this.targetCoinId,
    this.coinMcapUsd,
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
  @JsonValue("XAUT")
  XAUT,
  @JsonValue("XBT")
  XBT
}

@JsonSerializable()
class Market {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "identifier")
  final String? identifier;
  @JsonKey(name: "has_trading_incentive")
  final bool? hasTradingIncentive;

  Market({
    this.name,
    this.identifier,
    this.hasTradingIncentive,
  });

  factory Market.fromJson(Map<String, dynamic> json) => _$MarketFromJson(json);

  Map<String, dynamic> toJson() => _$MarketToJson(this);
}

enum TargetCoinId {
  @JsonValue("agora-dollar")
  AGORA_DOLLAR,
  @JsonValue("bitcoin")
  BITCOIN,
  @JsonValue("first-digital-usd")
  FIRST_DIGITAL_USD,
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
