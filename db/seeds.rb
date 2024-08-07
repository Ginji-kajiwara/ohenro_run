# frozen_string_literal: true

temples_data = [
  { name: '霊山寺', distance_from_start: 0, prefectures: '徳島県', address: '徳島県鳴門市大麻町板東字塚鼻１２６', description: '' },
  { name: '極楽寺', distance_from_start: 1.4, prefectures: '徳島県', address: '徳島県鳴門市大麻町檜段の上１２', description: '' },
  { name: '金泉寺', distance_from_start: 4, prefectures: '徳島県', address: '板野郡板野町大寺亀山下６６', description: '' },
  { name: '大日寺', distance_from_start: 9, prefectures: '徳島県', address: '板野郡板野町黒谷字居内５', description: '' },
  { name: '地蔵寺', distance_from_start: 11, prefectures: '徳島県', address: '板野郡板野町羅漢林東５', description: '' },
  { name: '安楽寺', distance_from_start: 16.3, prefectures: '徳島県', address: '板野郡上板町引野字寺の西北８', description: '' },
  { name: '十楽寺', distance_from_start: 17.5, prefectures: '徳島県', address: '板野郡土成町高尾字法教田５８', description: '' },
  { name: '熊谷寺', distance_from_start: 21.7, prefectures: '徳島県', address: '板野郡土成町土成前田１８５', description: '' },
  { name: '法輪寺', distance_from_start: 24.1, prefectures: '徳島県', address: '板野郡土成町土成字田中１９８‐２', description: '' },
  { name: '切幡寺', distance_from_start: 27.9, prefectures: '徳島県', address: '阿波郡市場町切幡字観音１２９', description: '' },
  { name: '藤井寺', distance_from_start: 37.2, prefectures: '徳島県', address: '徳島県麻植郡鴨島町飯尾１５２５', description: '' },
  { name: '焼山寺', distance_from_start: 50.1, prefectures: '徳島県', address: '徳島県名西郡神山町下分字地中３１８', description: '' },
  { name: '大日寺', distance_from_start: 70.9, prefectures: '徳島県', address: '徳島県徳島市一の宮町西丁２６３', description: '' },
  { name: '常楽寺', distance_from_start: 73.2, prefectures: '徳島県', address: '徳島県徳島市国府町延命６０６', description: '' },
  { name: '国分寺', distance_from_start: 74, prefectures: '徳島県', address: '徳島県徳島市国府町矢野７１８－１', description: '' },
  { name: '観音寺', distance_from_start: 75.8, prefectures: '徳島県', address: '徳島県徳島市国府町観音寺４９‐２', description: '' },
  { name: '井戸寺', distance_from_start: 78.6, prefectures: '徳島県', address: '徳島県徳島市国府町井戸字北屋敷８０‐１', description: '' },
  { name: '恩山寺', distance_from_start: 95.4, prefectures: '徳島県', address: '徳島県小松島市田野町恩山寺谷４０', description: '' },
  { name: '立江寺', distance_from_start: 99.4, prefectures: '徳島県', address: '徳島県小松島市立江町じ若松１３', description: '' },
  { name: '鶴林寺', distance_from_start: 112.5, prefectures: '徳島県', address: '徳島県勝浦郡勝浦町大字生名字鷲ケ尾１４', description: '' },
  { name: '太龍寺', distance_from_start: 119.2, prefectures: '徳島県', address: '徳島県阿南市加茂町龍山２', description: '' },
  { name: '平等寺', distance_from_start: 130.1, prefectures: '徳島県', address: '徳島県阿南市新野町秋山１７７', description: '' },
  { name: '薬王寺', distance_from_start: 149.8, prefectures: '徳島県', address: '徳島県海部郡日和佐町奥河字寺前２８５‐１', description: '' },
  { name: '最御崎寺', distance_from_start: 225.2, prefectures: '高知県', address: '高知県室戸市室戸岬町４０５８‐１', description: '' },
  { name: '津照寺', distance_from_start: 231.7, prefectures: '高知県', address: '高知県室戸市室津２６４４', description: '' },
  { name: '金剛頂寺', distance_from_start: 235.5, prefectures: '高知県', address: '高知県室戸市元乙５２３', description: '' },
  { name: '神峯寺', distance_from_start: 263, prefectures: '高知県', address: '高知県安芸郡安田町唐浜２５９４', description: '' },
  { name: '大日寺', distance_from_start: 300.5, prefectures: '高知県', address: '高知県香美郡野市町母代寺４７６', description: '' },
  { name: '国分寺', distance_from_start: 309.7, prefectures: '高知県', address: '高知県南国市国分５４６', description: '' },
  { name: '善楽寺', distance_from_start: 316.6, prefectures: '高知県', address: '高知県高知市一宮２５０１', description: '' },
  { name: '竹林寺', distance_from_start: 323.2, prefectures: '高知県', address: '高知県高知市五台山３５７７', description: '' },
  { name: '禅師峰寺', distance_from_start: 328.9, prefectures: '高知県', address: '高知県南国市十市３０８４', description: '' },
  { name: '雪蹊寺', distance_from_start: 336.4, prefectures: '高知県', address: '高知県高知市長浜８５７‐３', description: '' },
  { name: '種間寺', distance_from_start: 342.7, prefectures: '高知県', address: '高知県高知市春野町秋山72', description: '' },
  { name: '清瀧寺', distance_from_start: 352.5, prefectures: '高知県', address: '高知県土佐市高岡町丁５６８‐１', description: '' },
  { name: '青龍寺', distance_from_start: 366.4, prefectures: '高知県', address: '高知県土佐市宇佐町竜１６３', description: '' },
  { name: '岩本寺', distance_from_start: 424.9, prefectures: '高知県', address: '高知県高岡郡窪川町茂串町３‐１３', description: '' },
  { name: '金剛福寺', distance_from_start: 505.6, prefectures: '高知県', address: '高知県土佐清水市足摺岬２１４‐１', description: '' },
  { name: '延光寺', distance_from_start: 556.4, prefectures: '高知県', address: '高知県宿毛市平田町中山３９０', description: '' },
  { name: "観自在寺\t", distance_from_start: 582.2, prefectures: '愛媛県', address: '愛媛県南宇和郡御荘町平城２２５３‐１', description: '' },
  { name: '龍光寺', distance_from_start: 632.4, prefectures: '愛媛県', address: '愛媛県北宇和郡三間町大字戸雁１７３', description: '' },
  { name: '仏木寺', distance_from_start: 635, prefectures: '愛媛県', address: '愛媛県北宇和郡三間町字則１６８３', description: '' },
  { name: '明石寺', distance_from_start: 645.6, prefectures: '愛媛県', address: '愛媛県東宇和郡宇和町明石２０１', description: '' },
  { name: '大寶寺', distance_from_start: 712.8, prefectures: '愛媛県', address: '愛媛県上浮穴郡久万町字菅生１１７３', description: '' },
  { name: '岩屋寺', distance_from_start: 721.7, prefectures: '愛媛県', address: '愛媛県上浮穴郡美川村大字七鳥１４６８', description: '' },
  { name: '浄瑠璃寺', distance_from_start: 751.2, prefectures: '愛媛県', address: '愛媛県松山市浄瑠璃町２８２', description: '' },
  { name: '八坂寺', distance_from_start: 752.1, prefectures: '愛媛県', address: '愛媛県松山市浄瑠璃寺町八坂７７３', description: '' },
  { name: '西林寺', distance_from_start: 756.6, prefectures: '愛媛県', address: '愛媛県松山市高井町１００７', description: '' },
  { name: '浄土寺', distance_from_start: 759.8, prefectures: '愛媛県', address: '愛媛県松山市鷹子町１１９８', description: '' },
  { name: '繁多寺', distance_from_start: 761.5, prefectures: '愛媛県', address: '愛媛県松山市畑寺町３２', description: '' },
  { name: '石手寺', distance_from_start: 764.3, prefectures: '愛媛県', address: '愛媛県松山市石手２‐９‐２１', description: '' },
  { name: '太山寺', distance_from_start: 774.8, prefectures: '愛媛県', address: '愛媛県松山市太山寺町１７３０', description: '' },
  { name: '円明寺', distance_from_start: 777.3, prefectures: '愛媛県', address: '愛媛県松山市和気町１‐１８２', description: '' },
  { name: '延命寺', distance_from_start: 811.7, prefectures: '愛媛県', address: '愛媛県今治市阿方甲６３６', description: '' },
  { name: '南光坊', distance_from_start: 815.1, prefectures: '愛媛県', address: '愛媛県今治市別宮町３‐１', description: '' },
  { name: '泰山寺', distance_from_start: 818.1, prefectures: '愛媛県', address: '愛媛県今治市小泉１‐９‐１８', description: '' },
  { name: '永福寺', distance_from_start: 821.2, prefectures: '愛媛県', address: '愛媛県越智郡玉川町大字八幡甲２００', description: '' },
  { name: '仙遊寺', distance_from_start: 823.6, prefectures: '愛媛県', address: '愛媛県越智郡玉川町別所甲４８３', description: '' },
  { name: '国分寺', distance_from_start: 829.7, prefectures: '愛媛県', address: '愛媛県今治市国分４‐１‐３３', description: '' },
  { name: '横峰寺', distance_from_start: 856.7, prefectures: '愛媛県', address: '愛媛県周桑郡小松町石鎚甲２２５３', description: '' },
  { name: '香園寺', distance_from_start: 866.3, prefectures: '愛媛県', address: '愛媛県周桑郡小松町南川甲１９', description: '' },
  { name: '宝珠時', distance_from_start: 867.6, prefectures: '愛媛県', address: '愛媛県周桑郡小松町新屋敷甲４２８', description: '' },
  { name: '吉祥寺', distance_from_start: 869, prefectures: '愛媛県', address: '愛媛県西条市氷見乙１０４８', description: '' },
  { name: '前神寺', distance_from_start: 872.2, prefectures: '愛媛県', address: '愛媛県西条市洲之内甲１４２６', description: '' },
  { name: '三角寺', distance_from_start: 912.2, prefectures: '愛媛県', address: '愛媛県川之江市金田町三角寺甲７５', description: '' },
  { name: '雲辺寺', distance_from_start: 930.3, prefectures: '香川県', address: '徳島県三好郡池田町白地７６３‐２', description: '' },
  { name: '大興寺', distance_from_start: 939.7, prefectures: '香川県', address: '香川県三豊郡山本町辻小松尾４２０９', description: '' },
  { name: '神恵院', distance_from_start: 948.4, prefectures: '香川県', address: '香川県観音寺市八幡町１‐２‐７', description: '' },
  { name: '観音寺', distance_from_start: 948.4, prefectures: '香川県', address: '香川県観音寺市八幡町１‐２‐７', description: '' },
  { name: '本山寺', distance_from_start: 952.9, prefectures: '香川県', address: '香川県三豊郡豊中町本山甲１４４５', description: '' },
  { name: '弥谷寺', distance_from_start: 964.2, prefectures: '香川県', address: '香川県三豊郡三野町大見乙７０', description: '' },
  { name: '曼荼羅寺', distance_from_start: 967.7, prefectures: '香川県', address: '香川県善通寺市吉原町１３８０‐１', description: '' },
  { name: "出釈迦寺\t", distance_from_start: 968.3, prefectures: '香川県', address: '香川県善通寺市吉原町１０９１‐１', description: '' },
  { name: '甲山寺', distance_from_start: 970.5, prefectures: '香川県', address: '香川県善通寺市弘田町１７６５‐１', description: '' },
  { name: '善通寺', distance_from_start: 972.1, prefectures: '香川県', address: '香川県善通寺市善通寺町３‐３‐１', description: '' },
  { name: '金倉寺', distance_from_start: 975.9, prefectures: '香川県', address: '香川県善通寺市金蔵寺町１１６０', description: '' },
  { name: '道隆寺', distance_from_start: 979.8, prefectures: '香川県', address: '香川県仲多度郡多度津町北鴨１‐３‐３０', description: '' },
  { name: '郷照寺', distance_from_start: 987, prefectures: '香川県', address: '香川県綾歌郡宇多津町１４３５', description: '' },
  { name: '天皇寺', distance_from_start: 992.9, prefectures: '香川県', address: '香川県坂出市西庄町八十場１７１３‐２', description: '' },
  { name: '国分寺', distance_from_start: 999.5, prefectures: '香川県', address: '香川県綾歌郡国分寺町国分２０６５', description: '' },
  { name: '白峯寺', distance_from_start: 1006, prefectures: '香川県', address: '香川県坂出市青海町２６３５', description: '' },
  { name: '根香寺', distance_from_start: 1011, prefectures: '香川県', address: '香川県高松市中山町１５０９', description: '' },
  { name: '一宮寺', distance_from_start: 1022.5, prefectures: '香川県', address: '香川県高松市一宮町６０７', description: '' },
  { name: '屋島寺', distance_from_start: 1036.6, prefectures: '香川県', address: '香川県高松市屋島東町１８０８', description: '' },
  { name: '八栗寺', distance_from_start: 1042, prefectures: '香川県', address: '香川県木田郡牟礼町牟礼３４１６', description: '' },
  { name: '志度寺', distance_from_start: 1048.5, prefectures: '香川県', address: '香川県さぬき市志度町志度１１０２', description: '' },
  { name: '長尾寺', distance_from_start: 1055.5, prefectures: '香川県', address: '香川県さぬき市長尾町西６５３', description: '' },
  { name: '大窪寺', distance_from_start: 1067.8, prefectures: '香川県', address: '香川県さぬき市長尾町多和兼割９６', description: '' }
]

temples_data.each do |temple_data|
  Temple.create!(temple_data)
end

puts 'お寺のデータを作成しました！'
