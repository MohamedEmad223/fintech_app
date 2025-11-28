// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinResponseModel _$CoinResponseModelFromJson(
  Map<String, dynamic> json,
) => CoinResponseModel(
  id: json['id'] as String,
  symbol: json['symbol'] as String?,
  name: json['name'] as String?,
  webSlug: json['web_slug'] as String?,
  assetPlatformId: json['asset_platform_id'],
  platforms: json['platforms'] == null
      ? null
      : Platforms.fromJson(json['platforms'] as Map<String, dynamic>),
  detailPlatforms: json['detail_platforms'] == null
      ? null
      : DetailPlatforms.fromJson(
          json['detail_platforms'] as Map<String, dynamic>,
        ),
  blockTimeInMinutes: (json['block_time_in_minutes'] as num?)?.toInt(),
  hashingAlgorithm: json['hashing_algorithm'] as String?,
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  previewListing: json['preview_listing'] as bool?,
  publicNotice: json['public_notice'],
  additionalNotices: json['additional_notices'] as List<dynamic>?,
  localization: json['localization'] == null
      ? null
      : Tion.fromJson(json['localization'] as Map<String, dynamic>),
  description: json['description'] == null
      ? null
      : Tion.fromJson(json['description'] as Map<String, dynamic>),
  links: json['links'] == null
      ? null
      : Links.fromJson(json['links'] as Map<String, dynamic>),
  image: json['image'] == null
      ? null
      : Image.fromJson(json['image'] as Map<String, dynamic>),
  countryOrigin: json['country_origin'] as String?,
  genesisDate: json['genesis_date'] == null
      ? null
      : DateTime.parse(json['genesis_date'] as String),
  sentimentVotesUpPercentage: (json['sentiment_votes_up_percentage'] as num?)
      ?.toDouble(),
  sentimentVotesDownPercentage:
      (json['sentiment_votes_down_percentage'] as num?)?.toDouble(),
  watchlistPortfolioUsers: (json['watchlist_portfolio_users'] as num?)?.toInt(),
  marketCapRank: (json['market_cap_rank'] as num?)?.toInt(),
  marketData: json['market_data'] == null
      ? null
      : MarketData.fromJson(json['market_data'] as Map<String, dynamic>),
  communityData: json['community_data'] == null
      ? null
      : CommunityData.fromJson(json['community_data'] as Map<String, dynamic>),
  developerData: json['developer_data'] == null
      ? null
      : DeveloperData.fromJson(json['developer_data'] as Map<String, dynamic>),
  statusUpdates: json['status_updates'] as List<dynamic>?,
  lastUpdated: json['last_updated'] == null
      ? null
      : DateTime.parse(json['last_updated'] as String),
  tickers: (json['tickers'] as List<dynamic>?)
      ?.map((e) => Ticker.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CoinResponseModelToJson(CoinResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'web_slug': instance.webSlug,
      'asset_platform_id': instance.assetPlatformId,
      'platforms': instance.platforms,
      'detail_platforms': instance.detailPlatforms,
      'block_time_in_minutes': instance.blockTimeInMinutes,
      'hashing_algorithm': instance.hashingAlgorithm,
      'categories': instance.categories,
      'preview_listing': instance.previewListing,
      'public_notice': instance.publicNotice,
      'additional_notices': instance.additionalNotices,
      'localization': instance.localization,
      'description': instance.description,
      'links': instance.links,
      'image': instance.image,
      'country_origin': instance.countryOrigin,
      'genesis_date': instance.genesisDate?.toIso8601String(),
      'sentiment_votes_up_percentage': instance.sentimentVotesUpPercentage,
      'sentiment_votes_down_percentage': instance.sentimentVotesDownPercentage,
      'watchlist_portfolio_users': instance.watchlistPortfolioUsers,
      'market_cap_rank': instance.marketCapRank,
      'market_data': instance.marketData,
      'community_data': instance.communityData,
      'developer_data': instance.developerData,
      'status_updates': instance.statusUpdates,
      'last_updated': instance.lastUpdated?.toIso8601String(),
      'tickers': instance.tickers,
    };

CommunityData _$CommunityDataFromJson(Map<String, dynamic> json) =>
    CommunityData(
      facebookLikes: json['facebook_likes'],
      redditAveragePosts48H: (json['reddit_average_posts_48h'] as num?)
          ?.toInt(),
      redditAverageComments48H: (json['reddit_average_comments_48h'] as num?)
          ?.toInt(),
      redditSubscribers: (json['reddit_subscribers'] as num?)?.toInt(),
      redditAccountsActive48H: (json['reddit_accounts_active_48h'] as num?)
          ?.toInt(),
      telegramChannelUserCount: json['telegram_channel_user_count'],
    );

Map<String, dynamic> _$CommunityDataToJson(CommunityData instance) =>
    <String, dynamic>{
      'facebook_likes': instance.facebookLikes,
      'reddit_average_posts_48h': instance.redditAveragePosts48H,
      'reddit_average_comments_48h': instance.redditAverageComments48H,
      'reddit_subscribers': instance.redditSubscribers,
      'reddit_accounts_active_48h': instance.redditAccountsActive48H,
      'telegram_channel_user_count': instance.telegramChannelUserCount,
    };

Tion _$TionFromJson(Map<String, dynamic> json) => Tion(
  en: json['en'] as String?,
  zh: json['zh'] as String?,
  zhTw: json['zh-tw'] as String?,
  de: json['de'] as String?,
  fr: json['fr'] as String?,
  es: json['es'] as String?,
  ja: json['ja'] as String?,
  id: json['id'] as String?,
  ru: json['ru'] as String?,
  ko: json['ko'] as String?,
  ar: json['ar'] as String?,
  th: json['th'] as String?,
  vi: json['vi'] as String?,
  it: json['it'] as String?,
  pl: json['pl'] as String?,
  tr: json['tr'] as String?,
  hu: json['hu'] as String?,
  nl: json['nl'] as String?,
  ro: json['ro'] as String?,
  sv: json['sv'] as String?,
  cs: json['cs'] as String?,
  da: json['da'] as String?,
  el: json['el'] as String?,
  hi: json['hi'] as String?,
  no: json['no'] as String?,
  sk: json['sk'] as String?,
  uk: json['uk'] as String?,
  he: json['he'] as String?,
  fi: json['fi'] as String?,
  bg: json['bg'] as String?,
  hr: json['hr'] as String?,
  lt: json['lt'] as String?,
  sl: json['sl'] as String?,
  pt: json['pt'] as String?,
);

Map<String, dynamic> _$TionToJson(Tion instance) => <String, dynamic>{
  'en': instance.en,
  'zh': instance.zh,
  'zh-tw': instance.zhTw,
  'de': instance.de,
  'fr': instance.fr,
  'es': instance.es,
  'ja': instance.ja,
  'id': instance.id,
  'ru': instance.ru,
  'ko': instance.ko,
  'ar': instance.ar,
  'th': instance.th,
  'vi': instance.vi,
  'it': instance.it,
  'pl': instance.pl,
  'tr': instance.tr,
  'hu': instance.hu,
  'nl': instance.nl,
  'ro': instance.ro,
  'sv': instance.sv,
  'cs': instance.cs,
  'da': instance.da,
  'el': instance.el,
  'hi': instance.hi,
  'no': instance.no,
  'sk': instance.sk,
  'uk': instance.uk,
  'he': instance.he,
  'fi': instance.fi,
  'bg': instance.bg,
  'hr': instance.hr,
  'lt': instance.lt,
  'sl': instance.sl,
  'pt': instance.pt,
};

DetailPlatforms _$DetailPlatformsFromJson(Map<String, dynamic> json) =>
    DetailPlatforms(
      empty: json[''] == null
          ? null
          : Empty.fromJson(json[''] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DetailPlatformsToJson(DetailPlatforms instance) =>
    <String, dynamic>{'': instance.empty};

Empty _$EmptyFromJson(Map<String, dynamic> json) => Empty(
  decimalPlace: json['decimal_place'],
  contractAddress: json['contract_address'] as String?,
);

Map<String, dynamic> _$EmptyToJson(Empty instance) => <String, dynamic>{
  'decimal_place': instance.decimalPlace,
  'contract_address': instance.contractAddress,
};

DeveloperData _$DeveloperDataFromJson(
  Map<String, dynamic> json,
) => DeveloperData(
  forks: (json['forks'] as num?)?.toInt(),
  stars: (json['stars'] as num?)?.toInt(),
  subscribers: (json['subscribers'] as num?)?.toInt(),
  totalIssues: (json['total_issues'] as num?)?.toInt(),
  closedIssues: (json['closed_issues'] as num?)?.toInt(),
  pullRequestsMerged: (json['pull_requests_merged'] as num?)?.toInt(),
  pullRequestContributors: (json['pull_request_contributors'] as num?)?.toInt(),
  codeAdditionsDeletions4Weeks: json['code_additions_deletions_4_weeks'] == null
      ? null
      : CodeAdditionsDeletions4Weeks.fromJson(
          json['code_additions_deletions_4_weeks'] as Map<String, dynamic>,
        ),
  commitCount4Weeks: (json['commit_count_4_weeks'] as num?)?.toInt(),
  last4WeeksCommitActivitySeries:
      json['last_4_weeks_commit_activity_series'] as List<dynamic>?,
);

Map<String, dynamic> _$DeveloperDataToJson(DeveloperData instance) =>
    <String, dynamic>{
      'forks': instance.forks,
      'stars': instance.stars,
      'subscribers': instance.subscribers,
      'total_issues': instance.totalIssues,
      'closed_issues': instance.closedIssues,
      'pull_requests_merged': instance.pullRequestsMerged,
      'pull_request_contributors': instance.pullRequestContributors,
      'code_additions_deletions_4_weeks': instance.codeAdditionsDeletions4Weeks,
      'commit_count_4_weeks': instance.commitCount4Weeks,
      'last_4_weeks_commit_activity_series':
          instance.last4WeeksCommitActivitySeries,
    };

CodeAdditionsDeletions4Weeks _$CodeAdditionsDeletions4WeeksFromJson(
  Map<String, dynamic> json,
) => CodeAdditionsDeletions4Weeks(
  additions: (json['additions'] as num?)?.toInt(),
  deletions: (json['deletions'] as num?)?.toInt(),
);

Map<String, dynamic> _$CodeAdditionsDeletions4WeeksToJson(
  CodeAdditionsDeletions4Weeks instance,
) => <String, dynamic>{
  'additions': instance.additions,
  'deletions': instance.deletions,
};

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
  thumb: json['thumb'] as String?,
  small: json['small'] as String?,
  large: json['large'] as String?,
);

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
  'thumb': instance.thumb,
  'small': instance.small,
  'large': instance.large,
};

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
  homepage: (json['homepage'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  whitepaper: json['whitepaper'] as String?,
  blockchainSite: (json['blockchain_site'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  officialForumUrl: (json['official_forum_url'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  chatUrl: json['chat_url'] as List<dynamic>?,
  announcementUrl: json['announcement_url'] as List<dynamic>?,
  snapshotUrl: json['snapshot_url'],
  twitterScreenName: json['twitter_screen_name'] as String?,
  facebookUsername: json['facebook_username'] as String?,
  bitcointalkThreadIdentifier: json['bitcointalk_thread_identifier'],
  telegramChannelIdentifier: json['telegram_channel_identifier'] as String?,
  subredditUrl: json['subreddit_url'] as String?,
  reposUrl: json['repos_url'] == null
      ? null
      : ReposUrl.fromJson(json['repos_url'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
  'homepage': instance.homepage,
  'whitepaper': instance.whitepaper,
  'blockchain_site': instance.blockchainSite,
  'official_forum_url': instance.officialForumUrl,
  'chat_url': instance.chatUrl,
  'announcement_url': instance.announcementUrl,
  'snapshot_url': instance.snapshotUrl,
  'twitter_screen_name': instance.twitterScreenName,
  'facebook_username': instance.facebookUsername,
  'bitcointalk_thread_identifier': instance.bitcointalkThreadIdentifier,
  'telegram_channel_identifier': instance.telegramChannelIdentifier,
  'subreddit_url': instance.subredditUrl,
  'repos_url': instance.reposUrl,
};

ReposUrl _$ReposUrlFromJson(Map<String, dynamic> json) => ReposUrl(
  github: (json['github'] as List<dynamic>?)?.map((e) => e as String).toList(),
  bitbucket: json['bitbucket'] as List<dynamic>?,
);

Map<String, dynamic> _$ReposUrlToJson(ReposUrl instance) => <String, dynamic>{
  'github': instance.github,
  'bitbucket': instance.bitbucket,
};

MarketData _$MarketDataFromJson(Map<String, dynamic> json) => MarketData(
  currentPrice: (json['current_price'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  totalValueLocked: json['total_value_locked'],
  mcapToTvlRatio: json['mcap_to_tvl_ratio'],
  fdvToTvlRatio: json['fdv_to_tvl_ratio'],
  roi: json['roi'],
  ath: (json['ath'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  athChangePercentage: (json['ath_change_percentage'] as Map<String, dynamic>?)
      ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  athDate: (json['ath_date'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, DateTime.parse(e as String)),
  ),
  atl: (json['atl'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  atlChangePercentage: (json['atl_change_percentage'] as Map<String, dynamic>?)
      ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  atlDate: (json['atl_date'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, DateTime.parse(e as String)),
  ),
  marketCap: (json['market_cap'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  marketCapRank: (json['market_cap_rank'] as num?)?.toInt(),
  fullyDilutedValuation:
      (json['fully_diluted_valuation'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
  marketCapFdvRatio: (json['market_cap_fdv_ratio'] as num?)?.toInt(),
  totalVolume: (json['total_volume'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  high24H: (json['high_24h'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  low24H: (json['low_24h'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  priceChange24H: (json['price_change_24h'] as num?)?.toDouble(),
  priceChangePercentage24H: (json['price_change_percentage_24h'] as num?)
      ?.toDouble(),
  priceChangePercentage7D: (json['price_change_percentage_7d'] as num?)
      ?.toDouble(),
  priceChangePercentage14D: (json['price_change_percentage_14d'] as num?)
      ?.toDouble(),
  priceChangePercentage30D: (json['price_change_percentage_30d'] as num?)
      ?.toDouble(),
  priceChangePercentage60D: (json['price_change_percentage_60d'] as num?)
      ?.toDouble(),
  priceChangePercentage200D: (json['price_change_percentage_200d'] as num?)
      ?.toDouble(),
  priceChangePercentage1Y: (json['price_change_percentage_1y'] as num?)
      ?.toDouble(),
  marketCapChange24H: (json['market_cap_change_24h'] as num?)?.toDouble(),
  marketCapChangePercentage24H:
      (json['market_cap_change_percentage_24h'] as num?)?.toDouble(),
  priceChange24HInCurrency:
      (json['price_change_24h_in_currency'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
  priceChangePercentage1HInCurrency:
      (json['price_change_percentage_1h_in_currency'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  priceChangePercentage24HInCurrency:
      (json['price_change_percentage_24h_in_currency'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  priceChangePercentage7DInCurrency:
      (json['price_change_percentage_7d_in_currency'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  priceChangePercentage14DInCurrency:
      (json['price_change_percentage_14d_in_currency'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  priceChangePercentage30DInCurrency:
      (json['price_change_percentage_30d_in_currency'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  priceChangePercentage60DInCurrency:
      (json['price_change_percentage_60d_in_currency'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  priceChangePercentage200DInCurrency:
      (json['price_change_percentage_200d_in_currency']
              as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  priceChangePercentage1YInCurrency:
      (json['price_change_percentage_1y_in_currency'] as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  marketCapChange24HInCurrency:
      (json['market_cap_change_24h_in_currency'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ),
  marketCapChangePercentage24HInCurrency:
      (json['market_cap_change_percentage_24h_in_currency']
              as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toDouble())),
  totalSupply: (json['total_supply'] as num?)?.toInt(),
  maxSupply: (json['max_supply'] as num?)?.toInt(),
  maxSupplyInfinite: json['max_supply_infinite'] as bool?,
  circulatingSupply: (json['circulating_supply'] as num?)?.toInt(),
  lastUpdated: json['last_updated'] == null
      ? null
      : DateTime.parse(json['last_updated'] as String),
);

Map<String, dynamic> _$MarketDataToJson(
  MarketData instance,
) => <String, dynamic>{
  'current_price': instance.currentPrice,
  'total_value_locked': instance.totalValueLocked,
  'mcap_to_tvl_ratio': instance.mcapToTvlRatio,
  'fdv_to_tvl_ratio': instance.fdvToTvlRatio,
  'roi': instance.roi,
  'ath': instance.ath,
  'ath_change_percentage': instance.athChangePercentage,
  'ath_date': instance.athDate?.map((k, e) => MapEntry(k, e.toIso8601String())),
  'atl': instance.atl,
  'atl_change_percentage': instance.atlChangePercentage,
  'atl_date': instance.atlDate?.map((k, e) => MapEntry(k, e.toIso8601String())),
  'market_cap': instance.marketCap,
  'market_cap_rank': instance.marketCapRank,
  'fully_diluted_valuation': instance.fullyDilutedValuation,
  'market_cap_fdv_ratio': instance.marketCapFdvRatio,
  'total_volume': instance.totalVolume,
  'high_24h': instance.high24H,
  'low_24h': instance.low24H,
  'price_change_24h': instance.priceChange24H,
  'price_change_percentage_24h': instance.priceChangePercentage24H,
  'price_change_percentage_7d': instance.priceChangePercentage7D,
  'price_change_percentage_14d': instance.priceChangePercentage14D,
  'price_change_percentage_30d': instance.priceChangePercentage30D,
  'price_change_percentage_60d': instance.priceChangePercentage60D,
  'price_change_percentage_200d': instance.priceChangePercentage200D,
  'price_change_percentage_1y': instance.priceChangePercentage1Y,
  'market_cap_change_24h': instance.marketCapChange24H,
  'market_cap_change_percentage_24h': instance.marketCapChangePercentage24H,
  'price_change_24h_in_currency': instance.priceChange24HInCurrency,
  'price_change_percentage_1h_in_currency':
      instance.priceChangePercentage1HInCurrency,
  'price_change_percentage_24h_in_currency':
      instance.priceChangePercentage24HInCurrency,
  'price_change_percentage_7d_in_currency':
      instance.priceChangePercentage7DInCurrency,
  'price_change_percentage_14d_in_currency':
      instance.priceChangePercentage14DInCurrency,
  'price_change_percentage_30d_in_currency':
      instance.priceChangePercentage30DInCurrency,
  'price_change_percentage_60d_in_currency':
      instance.priceChangePercentage60DInCurrency,
  'price_change_percentage_200d_in_currency':
      instance.priceChangePercentage200DInCurrency,
  'price_change_percentage_1y_in_currency':
      instance.priceChangePercentage1YInCurrency,
  'market_cap_change_24h_in_currency': instance.marketCapChange24HInCurrency,
  'market_cap_change_percentage_24h_in_currency':
      instance.marketCapChangePercentage24HInCurrency,
  'total_supply': instance.totalSupply,
  'max_supply': instance.maxSupply,
  'max_supply_infinite': instance.maxSupplyInfinite,
  'circulating_supply': instance.circulatingSupply,
  'last_updated': instance.lastUpdated?.toIso8601String(),
};

Platforms _$PlatformsFromJson(Map<String, dynamic> json) =>
    Platforms(empty: json[''] as String?);

Map<String, dynamic> _$PlatformsToJson(Platforms instance) => <String, dynamic>{
  '': instance.empty,
};

Ticker _$TickerFromJson(Map<String, dynamic> json) => Ticker(
  base: $enumDecodeNullable(
    _$BaseEnumMap,
    json['base'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  target: json['target'] as String?,
  market: json['market'] == null
      ? null
      : Market.fromJson(json['market'] as Map<String, dynamic>),
  last: (json['last'] as num?)?.toDouble(),
  volume: (json['volume'] as num?)?.toDouble(),
  convertedLast: (json['converted_last'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  convertedVolume: (json['converted_volume'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, (e as num).toDouble()),
  ),
  trustScore: $enumDecodeNullable(_$TrustScoreEnumMap, json['trust_score']),
  bidAskSpreadPercentage: (json['bid_ask_spread_percentage'] as num?)
      ?.toDouble(),
  timestamp: json['timestamp'] == null
      ? null
      : DateTime.parse(json['timestamp'] as String),
  lastTradedAt: json['last_traded_at'] == null
      ? null
      : DateTime.parse(json['last_traded_at'] as String),
  lastFetchAt: json['last_fetch_at'] == null
      ? null
      : DateTime.parse(json['last_fetch_at'] as String),
  isAnomaly: json['is_anomaly'] as bool?,
  isStale: json['is_stale'] as bool?,
  tradeUrl: json['trade_url'] as String?,
  tokenInfoUrl: json['token_info_url'],
  coinId: json['coin_id'] as String?,
  targetCoinId: $enumDecodeNullable(
    _$TargetCoinIdEnumMap,
    json['target_coin_id'],
    unknownValue: JsonKey.nullForUndefinedEnumValue,
  ),
  coinMcapUsd: (json['coin_mcap_usd'] as num?)?.toDouble(),
);

Map<String, dynamic> _$TickerToJson(Ticker instance) => <String, dynamic>{
  'base': _$BaseEnumMap[instance.base],
  'target': instance.target,
  'market': instance.market,
  'last': instance.last,
  'volume': instance.volume,
  'converted_last': instance.convertedLast,
  'converted_volume': instance.convertedVolume,
  'trust_score': _$TrustScoreEnumMap[instance.trustScore],
  'bid_ask_spread_percentage': instance.bidAskSpreadPercentage,
  'timestamp': instance.timestamp?.toIso8601String(),
  'last_traded_at': instance.lastTradedAt?.toIso8601String(),
  'last_fetch_at': instance.lastFetchAt?.toIso8601String(),
  'is_anomaly': instance.isAnomaly,
  'is_stale': instance.isStale,
  'trade_url': instance.tradeUrl,
  'token_info_url': instance.tokenInfoUrl,
  'coin_id': instance.coinId,
  'target_coin_id': _$TargetCoinIdEnumMap[instance.targetCoinId],
  'coin_mcap_usd': instance.coinMcapUsd,
};

const _$BaseEnumMap = {
  Base.BNB: 'BNB',
  Base.BTC: 'BTC',
  Base.ETH: 'ETH',
  Base.SOL: 'SOL',
  Base.XAUT: 'XAUT',
  Base.XBT: 'XBT',
};

const _$TrustScoreEnumMap = {TrustScore.GREEN: 'green'};

const _$TargetCoinIdEnumMap = {
  TargetCoinId.AGORA_DOLLAR: 'agora-dollar',
  TargetCoinId.BITCOIN: 'bitcoin',
  TargetCoinId.FIRST_DIGITAL_USD: 'first-digital-usd',
  TargetCoinId.PAYPAL_USD: 'paypal-usd',
  TargetCoinId.SOCIETE_GENERALE_FORGE_EURCV: 'societe-generale-forge-eurcv',
  TargetCoinId.TETHER: 'tether',
  TargetCoinId.USD1_WLFI: 'usd1-wlfi',
  TargetCoinId.USD_COIN: 'usd-coin',
};

Market _$MarketFromJson(Map<String, dynamic> json) => Market(
  name: json['name'] as String?,
  identifier: json['identifier'] as String?,
  hasTradingIncentive: json['has_trading_incentive'] as bool?,
);

Map<String, dynamic> _$MarketToJson(Market instance) => <String, dynamic>{
  'name': instance.name,
  'identifier': instance.identifier,
  'has_trading_incentive': instance.hasTradingIncentive,
};
