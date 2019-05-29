

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `gateway_id` int(11) NOT NULL,
  `selected` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;






CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO categories VALUES("2","Sea","Active");
INSERT INTO categories VALUES("3","Food","Active");
INSERT INTO categories VALUES("4","Flower","Active");





CREATE TABLE IF NOT EXISTS `category_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO category_photo VALUES("1","1","2");
INSERT INTO category_photo VALUES("4","11","2");
INSERT INTO category_photo VALUES("6","2","2");
INSERT INTO category_photo VALUES("7","2","3");
INSERT INTO category_photo VALUES("8","2","4");
INSERT INTO category_photo VALUES("9","13","2");
INSERT INTO category_photo VALUES("10","13","3");
INSERT INTO category_photo VALUES("11","13","4");
INSERT INTO category_photo VALUES("12","14","4");





CREATE TABLE IF NOT EXISTS `comment_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;






CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `like_count` int(11) NOT NULL DEFAULT '0',
  `dislike_count` int(11) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO comments VALUES("1","2","2","nice","0","0","Active","2017-03-30 07:34:12","2017-03-30 07:34:12");
INSERT INTO comments VALUES("2","2","1","nice","0","0","Active","2017-03-30 07:35:42","2017-03-30 07:35:42");
INSERT INTO comments VALUES("3","2","1","nice","0","0","Active","2017-03-30 07:35:45","2017-03-30 07:35:45");
INSERT INTO comments VALUES("4","2","1","nice","0","0","Active","2017-03-30 07:35:55","2017-03-30 07:35:55");
INSERT INTO comments VALUES("5","2","1","hhh","0","0","Active","2017-03-30 07:40:17","2017-03-30 07:40:17");
INSERT INTO comments VALUES("6","2","1","444","0","0","Active","2017-03-30 07:41:12","2017-03-30 07:41:12");
INSERT INTO comments VALUES("7","6","1","fdsgdfsgdfsg","0","0","Active","2017-04-01 06:06:36","2017-04-01 06:06:36");
INSERT INTO comments VALUES("8","6","12","Nice Photo","0","0","Active","2017-04-01 12:58:54","2017-04-01 12:58:54");
INSERT INTO comments VALUES("9","6","12","Nice Photo","0","0","Active","2017-04-01 12:59:02","2017-04-01 12:59:02");
INSERT INTO comments VALUES("10","2","13","good","0","0","Active","2017-04-03 12:48:45","2017-04-03 12:48:45");
INSERT INTO comments VALUES("11","2","13","nice","0","0","Active","2017-04-03 12:56:41","2017-04-03 12:56:41");
INSERT INTO comments VALUES("12","2","13","nice","0","0","Active","2017-04-03 12:57:24","2017-04-03 12:57:24");
INSERT INTO comments VALUES("13","2","1","great","0","0","Active","2017-04-30 06:04:45","2017-04-30 06:04:45");
INSERT INTO comments VALUES("14","2","1","ggg","0","0","Active","2017-04-30 08:13:39","2017-04-30 08:13:39");





CREATE TABLE IF NOT EXISTS `country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short_name` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `long_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `iso3` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `num_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `phone_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_short_name_unique` (`short_name`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO country VALUES("1","AF","Afghanistan","AFG","4","93");
INSERT INTO country VALUES("2","AL","Albania","ALB","8","355");
INSERT INTO country VALUES("3","DZ","Algeria","DZA","12","213");
INSERT INTO country VALUES("4","AS","American Samoa","ASM","16","1684");
INSERT INTO country VALUES("5","AD","Andorra","AND","20","376");
INSERT INTO country VALUES("6","AO","Angola","AGO","24","244");
INSERT INTO country VALUES("7","AI","Anguilla","AIA","660","1264");
INSERT INTO country VALUES("8","AQ","Antarctica","","","0");
INSERT INTO country VALUES("9","AG","Antigua and Barbuda","ATG","28","1268");
INSERT INTO country VALUES("10","AR","Argentina","ARG","32","54");
INSERT INTO country VALUES("11","AM","Armenia","ARM","51","374");
INSERT INTO country VALUES("12","AW","Aruba","ABW","533","297");
INSERT INTO country VALUES("13","AU","Australia","AUS","36","61");
INSERT INTO country VALUES("14","AT","Austria","AUT","40","43");
INSERT INTO country VALUES("15","AZ","Azerbaijan","AZE","31","994");
INSERT INTO country VALUES("16","BS","Bahamas","BHS","44","1242");
INSERT INTO country VALUES("17","BH","Bahrain","BHR","48","973");
INSERT INTO country VALUES("18","BD","Bangladesh","BGD","50","880");
INSERT INTO country VALUES("19","BB","Barbados","BRB","52","1246");
INSERT INTO country VALUES("20","BY","Belarus","BLR","112","375");
INSERT INTO country VALUES("21","BE","Belgium","BEL","56","32");
INSERT INTO country VALUES("22","BZ","Belize","BLZ","84","501");
INSERT INTO country VALUES("23","BJ","Benin","BEN","204","229");
INSERT INTO country VALUES("24","BM","Bermuda","BMU","60","1441");
INSERT INTO country VALUES("25","BT","Bhutan","BTN","64","975");
INSERT INTO country VALUES("26","BO","Bolivia","BOL","68","591");
INSERT INTO country VALUES("27","BA","Bosnia and Herzegovina","BIH","70","387");
INSERT INTO country VALUES("28","BW","Botswana","BWA","72","267");
INSERT INTO country VALUES("29","BV","Bouvet Island","","","0");
INSERT INTO country VALUES("30","BR","Brazil","BRA","76","55");
INSERT INTO country VALUES("31","IO","British Indian Ocean Territory","","","246");
INSERT INTO country VALUES("32","BN","Brunei Darussalam","BRN","96","673");
INSERT INTO country VALUES("33","BG","Bulgaria","BGR","100","359");
INSERT INTO country VALUES("34","BF","Burkina Faso","BFA","854","226");
INSERT INTO country VALUES("35","BI","Burundi","BDI","108","257");
INSERT INTO country VALUES("36","KH","Cambodia","KHM","116","855");
INSERT INTO country VALUES("37","CM","Cameroon","CMR","120","237");
INSERT INTO country VALUES("38","CA","Canada","CAN","124","1");
INSERT INTO country VALUES("39","CV","Cape Verde","CPV","132","238");
INSERT INTO country VALUES("40","KY","Cayman Islands","CYM","136","1345");
INSERT INTO country VALUES("41","CF","Central African Republic","CAF","140","236");
INSERT INTO country VALUES("42","TD","Chad","TCD","148","235");
INSERT INTO country VALUES("43","CL","Chile","CHL","152","56");
INSERT INTO country VALUES("44","CN","China","CHN","156","86");
INSERT INTO country VALUES("45","CX","Christmas Island","","","61");
INSERT INTO country VALUES("46","CC","Cocos (Keeling) Islands","","","672");
INSERT INTO country VALUES("47","CO","Colombia","COL","170","57");
INSERT INTO country VALUES("48","KM","Comoros","COM","174","269");
INSERT INTO country VALUES("49","CG","Congo","COG","178","242");
INSERT INTO country VALUES("50","CD","Congo, the Democratic Republic of the","COD","180","242");
INSERT INTO country VALUES("51","CK","Cook Islands","COK","184","682");
INSERT INTO country VALUES("52","CR","Costa Rica","CRI","188","506");
INSERT INTO country VALUES("53","CI","Cote D\'Ivoire","CIV","384","225");
INSERT INTO country VALUES("54","HR","Croatia","HRV","191","385");
INSERT INTO country VALUES("55","CU","Cuba","CUB","192","53");
INSERT INTO country VALUES("56","CY","Cyprus","CYP","196","357");
INSERT INTO country VALUES("57","CZ","Czech Republic","CZE","203","420");
INSERT INTO country VALUES("58","DK","Denmark","DNK","208","45");
INSERT INTO country VALUES("59","DJ","Djibouti","DJI","262","253");
INSERT INTO country VALUES("60","DM","Dominica","DMA","212","1767");
INSERT INTO country VALUES("61","DO","Dominican Republic","DOM","214","1809");
INSERT INTO country VALUES("62","EC","Ecuador","ECU","218","593");
INSERT INTO country VALUES("63","EG","Egypt","EGY","818","20");
INSERT INTO country VALUES("64","SV","El Salvador","SLV","222","503");
INSERT INTO country VALUES("65","GQ","Equatorial Guinea","GNQ","226","240");
INSERT INTO country VALUES("66","ER","Eritrea","ERI","232","291");
INSERT INTO country VALUES("67","EE","Estonia","EST","233","372");
INSERT INTO country VALUES("68","ET","Ethiopia","ETH","231","251");
INSERT INTO country VALUES("69","FK","Falkland Islands (Malvinas)","FLK","238","500");
INSERT INTO country VALUES("70","FO","Faroe Islands","FRO","234","298");
INSERT INTO country VALUES("71","FJ","Fiji","FJI","242","679");
INSERT INTO country VALUES("72","FI","Finland","FIN","246","358");
INSERT INTO country VALUES("73","FR","France","FRA","250","33");
INSERT INTO country VALUES("74","GF","French Guiana","GUF","254","594");
INSERT INTO country VALUES("75","PF","French Polynesia","PYF","258","689");
INSERT INTO country VALUES("76","TF","French Southern Territories","","","0");
INSERT INTO country VALUES("77","GA","Gabon","GAB","266","241");
INSERT INTO country VALUES("78","GM","Gambia","GMB","270","220");
INSERT INTO country VALUES("79","GE","Georgia","GEO","268","995");
INSERT INTO country VALUES("80","DE","Germany","DEU","276","49");
INSERT INTO country VALUES("81","GH","Ghana","GHA","288","233");
INSERT INTO country VALUES("82","GI","Gibraltar","GIB","292","350");
INSERT INTO country VALUES("83","GR","Greece","GRC","300","30");
INSERT INTO country VALUES("84","GL","Greenland","GRL","304","299");
INSERT INTO country VALUES("85","GD","Grenada","GRD","308","1473");
INSERT INTO country VALUES("86","GP","Guadeloupe","GLP","312","590");
INSERT INTO country VALUES("87","GU","Guam","GUM","316","1671");
INSERT INTO country VALUES("88","GT","Guatemala","GTM","320","502");
INSERT INTO country VALUES("89","GN","Guinea","GIN","324","224");
INSERT INTO country VALUES("90","GW","Guinea-Bissau","GNB","624","245");
INSERT INTO country VALUES("91","GY","Guyana","GUY","328","592");
INSERT INTO country VALUES("92","HT","Haiti","HTI","332","509");
INSERT INTO country VALUES("93","HM","Heard Island and Mcdonald Islands","","","0");
INSERT INTO country VALUES("94","VA","Holy See (Vatican City State)","VAT","336","39");
INSERT INTO country VALUES("95","HN","Honduras","HND","340","504");
INSERT INTO country VALUES("96","HK","Hong Kong","HKG","344","852");
INSERT INTO country VALUES("97","HU","Hungary","HUN","348","36");
INSERT INTO country VALUES("98","IS","Iceland","ISL","352","354");
INSERT INTO country VALUES("99","IN","India","IND","356","91");
INSERT INTO country VALUES("100","ID","Indonesia","IDN","360","62");
INSERT INTO country VALUES("101","IR","Iran, Islamic Republic of","IRN","364","98");
INSERT INTO country VALUES("102","IQ","Iraq","IRQ","368","964");
INSERT INTO country VALUES("103","IE","Ireland","IRL","372","353");
INSERT INTO country VALUES("104","IL","Israel","ISR","376","972");
INSERT INTO country VALUES("105","IT","Italy","ITA","380","39");
INSERT INTO country VALUES("106","JM","Jamaica","JAM","388","1876");
INSERT INTO country VALUES("107","JP","Japan","JPN","392","81");
INSERT INTO country VALUES("108","JO","Jordan","JOR","400","962");
INSERT INTO country VALUES("109","KZ","Kazakhstan","KAZ","398","7");
INSERT INTO country VALUES("110","KE","Kenya","KEN","404","254");
INSERT INTO country VALUES("111","KI","Kiribati","KIR","296","686");
INSERT INTO country VALUES("112","KP","Korea, Democratic People\'s Republic of","PRK","408","850");
INSERT INTO country VALUES("113","KR","Korea, Republic of","KOR","410","82");
INSERT INTO country VALUES("114","KW","Kuwait","KWT","414","965");
INSERT INTO country VALUES("115","KG","Kyrgyzstan","KGZ","417","996");
INSERT INTO country VALUES("116","LA","Lao People\'s Democratic Republic","LAO","418","856");
INSERT INTO country VALUES("117","LV","Latvia","LVA","428","371");
INSERT INTO country VALUES("118","LB","Lebanon","LBN","422","961");
INSERT INTO country VALUES("119","LS","Lesotho","LSO","426","266");
INSERT INTO country VALUES("120","LR","Liberia","LBR","430","231");
INSERT INTO country VALUES("121","LY","Libyan Arab Jamahiriya","LBY","434","218");
INSERT INTO country VALUES("122","LI","Liechtenstein","LIE","438","423");
INSERT INTO country VALUES("123","LT","Lithuania","LTU","440","370");
INSERT INTO country VALUES("124","LU","Luxembourg","LUX","442","352");
INSERT INTO country VALUES("125","MO","Macao","MAC","446","853");
INSERT INTO country VALUES("126","MK","Macedonia, the Former Yugoslav Republic of","MKD","807","389");
INSERT INTO country VALUES("127","MG","Madagascar","MDG","450","261");
INSERT INTO country VALUES("128","MW","Malawi","MWI","454","265");
INSERT INTO country VALUES("129","MY","Malaysia","MYS","458","60");
INSERT INTO country VALUES("130","MV","Maldives","MDV","462","960");
INSERT INTO country VALUES("131","ML","Mali","MLI","466","223");
INSERT INTO country VALUES("132","MT","Malta","MLT","470","356");
INSERT INTO country VALUES("133","MH","Marshall Islands","MHL","584","692");
INSERT INTO country VALUES("134","MQ","Martinique","MTQ","474","596");
INSERT INTO country VALUES("135","MR","Mauritania","MRT","478","222");
INSERT INTO country VALUES("136","MU","Mauritius","MUS","480","230");
INSERT INTO country VALUES("137","YT","Mayotte","","","269");
INSERT INTO country VALUES("138","MX","Mexico","MEX","484","52");
INSERT INTO country VALUES("139","FM","Micronesia, Federated States of","FSM","583","691");
INSERT INTO country VALUES("140","MD","Moldova, Republic of","MDA","498","373");
INSERT INTO country VALUES("141","MC","Monaco","MCO","492","377");
INSERT INTO country VALUES("142","MN","Mongolia","MNG","496","976");
INSERT INTO country VALUES("143","MS","Montserrat","MSR","500","1664");
INSERT INTO country VALUES("144","MA","Morocco","MAR","504","212");
INSERT INTO country VALUES("145","MZ","Mozambique","MOZ","508","258");
INSERT INTO country VALUES("146","MM","Myanmar","MMR","104","95");
INSERT INTO country VALUES("147","NA","Namibia","NAM","516","264");
INSERT INTO country VALUES("148","NR","Nauru","NRU","520","674");
INSERT INTO country VALUES("149","NP","Nepal","NPL","524","977");
INSERT INTO country VALUES("150","NL","Netherlands","NLD","528","31");
INSERT INTO country VALUES("151","AN","Netherlands Antilles","ANT","530","599");
INSERT INTO country VALUES("152","NC","New Caledonia","NCL","540","687");
INSERT INTO country VALUES("153","NZ","New Zealand","NZL","554","64");
INSERT INTO country VALUES("154","NI","Nicaragua","NIC","558","505");
INSERT INTO country VALUES("155","NE","Niger","NER","562","227");
INSERT INTO country VALUES("156","NG","Nigeria","NGA","566","234");
INSERT INTO country VALUES("157","NU","Niue","NIU","570","683");
INSERT INTO country VALUES("158","NF","Norfolk Island","NFK","574","672");
INSERT INTO country VALUES("159","MP","Northern Mariana Islands","MNP","580","1670");
INSERT INTO country VALUES("160","NO","Norway","NOR","578","47");
INSERT INTO country VALUES("161","OM","Oman","OMN","512","968");
INSERT INTO country VALUES("162","PK","Pakistan","PAK","586","92");
INSERT INTO country VALUES("163","PW","Palau","PLW","585","680");
INSERT INTO country VALUES("164","PS","Palestinian Territory, Occupied","","","970");
INSERT INTO country VALUES("165","PA","Panama","PAN","591","507");
INSERT INTO country VALUES("166","PG","Papua New Guinea","PNG","598","675");
INSERT INTO country VALUES("167","PY","Paraguay","PRY","600","595");
INSERT INTO country VALUES("168","PE","Peru","PER","604","51");
INSERT INTO country VALUES("169","PH","Philippines","PHL","608","63");
INSERT INTO country VALUES("170","PN","Pitcairn","PCN","612","0");
INSERT INTO country VALUES("171","PL","Poland","POL","616","48");
INSERT INTO country VALUES("172","PT","Portugal","PRT","620","351");
INSERT INTO country VALUES("173","PR","Puerto Rico","PRI","630","1787");
INSERT INTO country VALUES("174","QA","Qatar","QAT","634","974");
INSERT INTO country VALUES("175","RE","Reunion","REU","638","262");
INSERT INTO country VALUES("176","RO","Romania","ROM","642","40");
INSERT INTO country VALUES("177","RU","Russian Federation","RUS","643","70");
INSERT INTO country VALUES("178","RW","Rwanda","RWA","646","250");
INSERT INTO country VALUES("179","SH","Saint Helena","SHN","654","290");
INSERT INTO country VALUES("180","KN","Saint Kitts and Nevis","KNA","659","1869");
INSERT INTO country VALUES("181","LC","Saint Lucia","LCA","662","1758");
INSERT INTO country VALUES("182","PM","Saint Pierre and Miquelon","SPM","666","508");
INSERT INTO country VALUES("183","VC","Saint Vincent and the Grenadines","VCT","670","1784");
INSERT INTO country VALUES("184","WS","Samoa","WSM","882","684");
INSERT INTO country VALUES("185","SM","San Marino","SMR","674","378");
INSERT INTO country VALUES("186","ST","Sao Tome and Principe","STP","678","239");
INSERT INTO country VALUES("187","SA","Saudi Arabia","SAU","682","966");
INSERT INTO country VALUES("188","SN","Senegal","SEN","686","221");
INSERT INTO country VALUES("189","CS","Serbia and Montenegro","","","381");
INSERT INTO country VALUES("190","SC","Seychelles","SYC","690","248");
INSERT INTO country VALUES("191","SL","Sierra Leone","SLE","694","232");
INSERT INTO country VALUES("192","SG","Singapore","SGP","702","65");
INSERT INTO country VALUES("193","SK","Slovakia","SVK","703","421");
INSERT INTO country VALUES("194","SI","Slovenia","SVN","705","386");
INSERT INTO country VALUES("195","SB","Solomon Islands","SLB","90","677");
INSERT INTO country VALUES("196","SO","Somalia","SOM","706","252");
INSERT INTO country VALUES("197","ZA","South Africa","ZAF","710","27");
INSERT INTO country VALUES("198","GS","South Georgia and the South Sandwich Islands","","","0");
INSERT INTO country VALUES("199","ES","Spain","ESP","724","34");
INSERT INTO country VALUES("200","LK","Sri Lanka","LKA","144","94");
INSERT INTO country VALUES("201","SD","Sudan","SDN","736","249");
INSERT INTO country VALUES("202","SR","Suriname","SUR","740","597");
INSERT INTO country VALUES("203","SJ","Svalbard and Jan Mayen","SJM","744","47");
INSERT INTO country VALUES("204","SZ","Swaziland","SWZ","748","268");
INSERT INTO country VALUES("205","SE","Sweden","SWE","752","46");
INSERT INTO country VALUES("206","CH","Switzerland","CHE","756","41");
INSERT INTO country VALUES("207","SY","Syrian Arab Republic","SYR","760","963");
INSERT INTO country VALUES("208","TW","Taiwan, Province of China","TWN","158","886");
INSERT INTO country VALUES("209","TJ","Tajikistan","TJK","762","992");
INSERT INTO country VALUES("210","TZ","Tanzania, United Republic of","TZA","834","255");
INSERT INTO country VALUES("211","TH","Thailand","THA","764","66");
INSERT INTO country VALUES("212","TL","Timor-Leste","","","670");
INSERT INTO country VALUES("213","TG","Togo","TGO","768","228");
INSERT INTO country VALUES("214","TK","Tokelau","TKL","772","690");
INSERT INTO country VALUES("215","TO","Tonga","TON","776","676");
INSERT INTO country VALUES("216","TT","Trinidad and Tobago","TTO","780","1868");
INSERT INTO country VALUES("217","TN","Tunisia","TUN","788","216");
INSERT INTO country VALUES("218","TR","Turkey","TUR","792","90");
INSERT INTO country VALUES("219","TM","Turkmenistan","TKM","795","7370");
INSERT INTO country VALUES("220","TC","Turks and Caicos Islands","TCA","796","1649");
INSERT INTO country VALUES("221","TV","Tuvalu","TUV","798","688");
INSERT INTO country VALUES("222","UG","Uganda","UGA","800","256");
INSERT INTO country VALUES("223","UA","Ukraine","UKR","804","380");
INSERT INTO country VALUES("224","AE","United Arab Emirates","ARE","784","971");
INSERT INTO country VALUES("225","GB","United Kingdom","GBR","826","44");
INSERT INTO country VALUES("226","US","United States","USA","840","1");
INSERT INTO country VALUES("227","UM","United States Minor Outlying Islands","","","1");
INSERT INTO country VALUES("228","UY","Uruguay","URY","858","598");
INSERT INTO country VALUES("229","UZ","Uzbekistan","UZB","860","998");
INSERT INTO country VALUES("230","VU","Vanuatu","VUT","548","678");
INSERT INTO country VALUES("231","VE","Venezuela","VEN","862","58");
INSERT INTO country VALUES("232","VN","Viet Nam","VNM","704","84");
INSERT INTO country VALUES("233","VG","Virgin Islands, British","VGB","92","1284");
INSERT INTO country VALUES("234","VI","Virgin Islands, U.s.","VIR","850","1340");
INSERT INTO country VALUES("235","WF","Wallis and Futuna","WLF","876","681");
INSERT INTO country VALUES("236","EH","Western Sahara","ESH","732","212");
INSERT INTO country VALUES("237","YE","Yemen","YEM","887","967");
INSERT INTO country VALUES("238","ZM","Zambia","ZMB","894","260");
INSERT INTO country VALUES("239","ZW","Zimbabwe","ZWE","716","263");





CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `default_currency` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_code_unique` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO currency VALUES("1","US Dollar","USD","&#36;","1.00","Active","1");
INSERT INTO currency VALUES("2","Pound Sterling","GBP","&pound;","0.65","Active","0");
INSERT INTO currency VALUES("3","Europe","EUR","&euro;","0.88","Active","0");
INSERT INTO currency VALUES("4","Australian Dollar","AUD","&#36;","1.41","Active","0");
INSERT INTO currency VALUES("5","Singapore","SGD","&#36;","1.41","Active","0");
INSERT INTO currency VALUES("6","Swedish Krona","SEK","kr","8.24","Active","0");
INSERT INTO currency VALUES("7","Danish Krone","DKK","kr","6.58","Active","0");
INSERT INTO currency VALUES("8","Mexican Peso","MXN","$","16.83","Active","0");
INSERT INTO currency VALUES("9","Brazilian Real","BRL","R$","3.88","Active","0");
INSERT INTO currency VALUES("10","Malaysian Ringgit","MYR","RM","4.31","Active","0");
INSERT INTO currency VALUES("11","Philippine Peso","PHP","P","46.73","Active","0");
INSERT INTO currency VALUES("12","Swiss Franc","CHF","&euro;","0.97","Active","0");
INSERT INTO currency VALUES("13","India","INR","&#x20B9;","66.24","Active","0");
INSERT INTO currency VALUES("14","Argentine Peso","ARS","&#36;","9.35","Active","0");
INSERT INTO currency VALUES("15","Canadian Dollar","CAD","&#36;","1.33","Active","0");
INSERT INTO currency VALUES("16","Chinese Yuan","CNY","&#165;","6.37","Active","0");
INSERT INTO currency VALUES("17","Czech Republic Koruna","CZK","K&#269;","23.91","Active","0");
INSERT INTO currency VALUES("18","Hong Kong Dollar","HKD","&#36;","7.75","Active","0");
INSERT INTO currency VALUES("19","Hungarian Forint","HUF","Ft","276.41","Active","0");
INSERT INTO currency VALUES("20","Indonesian Rupiah","IDR","Rp","14249.50","Active","0");
INSERT INTO currency VALUES("21","Israeli New Sheqel","ILS","&#8362;","3.86","Active","0");
INSERT INTO currency VALUES("22","Japanese Yen","JPY","&#165;","120.59","Active","0");
INSERT INTO currency VALUES("23","South Korean Won","KRW","&#8361;","1182.69","Active","0");
INSERT INTO currency VALUES("24","Norwegian Krone","NOK","kr","8.15","Active","0");
INSERT INTO currency VALUES("25","New Zealand Dollar","NZD","&#36;","1.58","Active","0");
INSERT INTO currency VALUES("26","Polish Zloty","PLN","z&#322;","3.71","Active","0");
INSERT INTO currency VALUES("27","Russian Ruble","RUB","p","67.75","Active","0");
INSERT INTO currency VALUES("28","Thai Baht","THB","&#3647;","36.03","Active","0");
INSERT INTO currency VALUES("29","Turkish Lira","TRY","&#8378;","3.05","Active","0");
INSERT INTO currency VALUES("30","New Taiwan Dollar","TWD","&#36;","32.47","Active","0");
INSERT INTO currency VALUES("31","Vietnamese Dong","VND","&#8363;","22471.00","Active","0");
INSERT INTO currency VALUES("32","South African Rand","ZAR","R","13.55","Active","0");





CREATE TABLE IF NOT EXISTS `follows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `follow_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO follows VALUES("13","2","1","2017-04-03 12:40:44","2017-04-03 12:40:44");
INSERT INTO follows VALUES("16","2","3","2017-04-03 12:45:30","2017-04-03 12:45:30");
INSERT INTO follows VALUES("21","3","7","2017-04-15 12:32:46","2017-04-15 12:32:46");





CREATE TABLE IF NOT EXISTS `join_us` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO join_us VALUES("1","facebook","http://www.espncricinfo.com");
INSERT INTO join_us VALUES("2","google_plus","#");
INSERT INTO join_us VALUES("3","twitter","#");
INSERT INTO join_us VALUES("4","linkedin","#");
INSERT INTO join_us VALUES("5","pinterest","#");
INSERT INTO join_us VALUES("6","youtube","#");
INSERT INTO join_us VALUES("7","instagram","#");





CREATE TABLE IF NOT EXISTS `language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `default_language` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO language VALUES("1","Bahasa Indonesia","id","Active","0");
INSERT INTO language VALUES("2","Bahasa Melayu","ms","Active","0");
INSERT INTO language VALUES("3","Català","ca","Active","0");
INSERT INTO language VALUES("4","Dansk","da","Active","0");
INSERT INTO language VALUES("5","Deutsch","de","Active","0");
INSERT INTO language VALUES("6","English","en","Active","1");
INSERT INTO language VALUES("7","Español","es","Active","0");
INSERT INTO language VALUES("8","E???????","el","Active","0");
INSERT INTO language VALUES("9","Français","fr","Active","0");
INSERT INTO language VALUES("10","Italiano","it","Active","0");
INSERT INTO language VALUES("11","Magyar","hu","Active","0");
INSERT INTO language VALUES("12","Nederlands","nl","Active","0");
INSERT INTO language VALUES("13","Norsk","no","Inactive","0");
INSERT INTO language VALUES("14","Polski","pl","Active","0");
INSERT INTO language VALUES("15","Português","pt","Active","0");
INSERT INTO language VALUES("16","Suomi","fi","Active","0");
INSERT INTO language VALUES("17","Svenska","sv","Inactive","0");
INSERT INTO language VALUES("18","Türkçe","tr","Active","0");
INSERT INTO language VALUES("19","Íslenska","is","Inactive","0");
INSERT INTO language VALUES("20","?eština","cs","Inactive","0");
INSERT INTO language VALUES("21","???????","ru","Active","0");
INSERT INTO language VALUES("22","???????","th","Active","0");
INSERT INTO language VALUES("23","?? (??)","zh","Active","0");
INSERT INTO language VALUES("24","?? (??)","zh-TW","Inactive","0");
INSERT INTO language VALUES("25","???","ja","Inactive","0");
INSERT INTO language VALUES("26","???","ko","Inactive","0");





CREATE TABLE IF NOT EXISTS `metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO metas VALUES("1","/","Home | Best Photos","Buy, sell and download photos","");
INSERT INTO metas VALUES("2","login","Log In","Log In","");
INSERT INTO metas VALUES("3","register","Register","Register","");
INSERT INTO metas VALUES("4","newest","Newest Photos","Newest Photos","");
INSERT INTO metas VALUES("5","forgot_password","Forgot Password","Forgot Password","");
INSERT INTO metas VALUES("6","dashboard","Feeds","Feeds","");
INSERT INTO metas VALUES("7","uploads","Uploads","Uploads","");
INSERT INTO metas VALUES("8","notification","Notification","Notification","");
INSERT INTO metas VALUES("9","profile","Profile","Profile","");
INSERT INTO metas VALUES("10","profile/{id}","Profile","Profile","");
INSERT INTO metas VALUES("11","manage-photos","Manage Photos","Manage Photos","");
INSERT INTO metas VALUES("12","earning","Earning","Earning","");
INSERT INTO metas VALUES("13","purchase","Purchase","Purchase","");
INSERT INTO metas VALUES("14","settings","Settings","Settings","");
INSERT INTO metas VALUES("15","settings/account","Settings","Settings","");
INSERT INTO metas VALUES("16","settings/payment","Settings","Settings","");
INSERT INTO metas VALUES("17","photo/single/{id}","Photo Single","Photo Single","");
INSERT INTO metas VALUES("18","payments/success","Payment Success","Payment Success","");
INSERT INTO metas VALUES("19","payments/cancel","Payment Cancel","Payment Cancel","");
INSERT INTO metas VALUES("20","profile-uploads/{type}","Profile Uploads","Profile Uploads","");
INSERT INTO metas VALUES("21","photo-details/{id}","Photo Details","Photo Details","");
INSERT INTO metas VALUES("22","withdraws","Withdraws","Withdraws","");
INSERT INTO metas VALUES("23","photos/download/{id}","Photos Download","Photos Download","");
INSERT INTO metas VALUES("24","users/reset_password/{secret?}","Reset Password","Reset Password","");





CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO migrations VALUES("234","2014_10_12_000000_create_users_table","1");
INSERT INTO migrations VALUES("235","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("236","2015_09_26_161159_entrust_setup_tables","1");
INSERT INTO migrations VALUES("237","2017_02_07_125148_create_categories_table","1");
INSERT INTO migrations VALUES("238","2017_02_07_130759_create_payment_gateways_table","1");
INSERT INTO migrations VALUES("239","2017_02_08_044609_create_accounts_table","1");
INSERT INTO migrations VALUES("240","2017_02_08_044936_create_site_settings_table","1");
INSERT INTO migrations VALUES("241","2017_02_08_045043_create_payment_settings_table","1");
INSERT INTO migrations VALUES("242","2017_02_08_045108_create_pages_table","1");
INSERT INTO migrations VALUES("243","2017_02_08_045204_create_reports_table","1");
INSERT INTO migrations VALUES("244","2017_02_08_045412_create_country_table","1");
INSERT INTO migrations VALUES("245","2017_02_08_045643_create_language_table","1");
INSERT INTO migrations VALUES("246","2017_02_08_045745_create_currency_table","1");
INSERT INTO migrations VALUES("247","2017_02_23_110333_create_backup_table","1");
INSERT INTO migrations VALUES("248","2017_02_27_124315_create_metas_table","1");
INSERT INTO migrations VALUES("249","2017_03_01_130507_create_user_details_table","1");
INSERT INTO migrations VALUES("250","2017_03_01_131013_create_photos_table","1");
INSERT INTO migrations VALUES("251","2017_03_01_131053_create_photo_details_table","1");
INSERT INTO migrations VALUES("252","2017_03_01_131205_create_comments_table","1");
INSERT INTO migrations VALUES("253","2017_03_01_131358_create_follows_table","1");
INSERT INTO migrations VALUES("254","2017_03_02_080821_create_payments_table","1");
INSERT INTO migrations VALUES("255","2017_03_09_113632_create_category_photo","1");





CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('read','unread') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO notifications VALUES("1","2","<p><a href=\"http://localhost/photocrowd/profile/2\">Rashed</a> liked your <a href=\"http://localhost/photocrowd/photo/single/11\">photo</a></p>","read","2017-04-10 12:11:02","2017-04-30 08:23:24");
INSERT INTO notifications VALUES("2","2","<p><a href=\"http://localhost/photocrowd/profile/2\">Rashed</a> liked your <a href=\"http://localhost/photocrowd/photo/single/9\">photo</a></p>","read","2017-04-10 12:11:27","2017-04-30 08:23:24");
INSERT INTO notifications VALUES("3","2","<p><a href=\"http://localhost/photocrowd/profile/2\">Rashed</a> liked your <a href=\"http://localhost/photocrowd/photo/single/9\">photo</a></p>","read","2017-04-10 12:45:02","2017-04-30 08:23:24");
INSERT INTO notifications VALUES("4","7","<p><a href=\"http://localhost/photocrowd/profile/3\">Sami Khan</a> has followed you</p>","unread","2017-04-15 10:44:41","2017-04-15 10:44:41");
INSERT INTO notifications VALUES("5","7","<p><a href=\"http://localhost/photocrowd/profile/3\">Sami Khan</a> has followed you</p>","unread","2017-04-15 10:45:12","2017-04-15 10:45:12");
INSERT INTO notifications VALUES("6","7","<p><a href=\"http://localhost/photocrowd/profile/3\">Sami Khan</a> has followed you</p>","unread","2017-04-15 10:49:05","2017-04-15 10:49:05");
INSERT INTO notifications VALUES("7","7","<p><a href=\"http://localhost/photocrowd/profile/3\">Sami Khan</a> has followed you</p>","unread","2017-04-15 10:50:26","2017-04-15 10:50:26");
INSERT INTO notifications VALUES("8","7","<p><a href=\"http://localhost/photocrowd/profile/3\">Sami Khan</a> has followed you</p>","unread","2017-04-15 12:32:46","2017-04-15 12:32:46");
INSERT INTO notifications VALUES("9","2","<a href=\"http://localhost/photocrowd/profile/2\">Rashed</a> commented on a <a href=\"http://localhost/photocrowd/photo/single/1\">photo</a> of yours","read","2017-04-30 06:04:45","2017-04-30 08:23:24");
INSERT INTO notifications VALUES("10","2","<a href=\"http://localhost/photocrowd/profile/2\">Rashed</a> liked your <a href=\"http://localhost/photocrowd/photo/single/11\">photo</a> of yours","read","2017-04-30 06:31:50","2017-04-30 08:23:24");





CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `footer_position` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO pages VALUES("1","Help","help","<p>Help page coming soon.</p>","first","Active","","2017-04-20 12:09:22");
INSERT INTO pages VALUES("2","Contact","contact","<p>Contact page coming soon</p>","second","Active","2017-04-20 12:00:47","2017-04-20 12:00:47");





CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO password_resets VALUES("sami.techvill@gmail.com","MJVqoa65iruTHHZSrqNQyhu1MLCSFpGxZ7eS3sL900f6sQ88v85ovD1aNeEml12lq7kjpP5Xd4R7mMAUPj1Lq9JgLZ852yzesmPo","2017-05-02 08:40:34");
INSERT INTO password_resets VALUES("sami.techvill@gmail.com","Jq6j3IxcM1kWYyxJxNvrdNJT9tUE45ojpRrFjGJBsmoBRI9vJX7ev4c95Wu3iAolMnanV4vRWmDs3ift5qGwK0bjaXBDwD39fddn","2017-05-02 08:41:34");
INSERT INTO password_resets VALUES("sami.techvill@gmail.com","eEvWi5zirY29CkE6GGZM86ykBF4PoYoAe6XlMyianphIqPK4wMPmGohWTOcWQ0O9Mz3QUqkZVze4RSFXxsMmbyBTGgi0mhESS0n1","2017-05-02 08:49:04");
INSERT INTO password_resets VALUES("sami.techvill@gmail.com","Y1eBlBNzPVnTMd0kMMMO5S9b5QpMysqgTRDrZngxgkuC069JSByaDoifXkNuCV3e00yNGlmbPvdhXCstqZmAcXt6v41rRO5j817r","2017-05-02 09:00:11");
INSERT INTO password_resets VALUES("sami.techvill@gmail.com","MOLbPunmDu3zEmRsWbhhkjeBf1EQvE2lpVB39EHVTE8FuM0POxYyRGoWq9t7LA74PV6SguQlaFVXupv2SFo7nXy6WAyJvE97NSGB","2017-05-02 10:37:32");





CREATE TABLE IF NOT EXISTS `payment_gateway` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `site` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO payment_gateway VALUES("1","username","techvillage_business_api1.gmail.com","PayPal");
INSERT INTO payment_gateway VALUES("2","password","9DDYZX2JLA6QL668","PayPal");
INSERT INTO payment_gateway VALUES("3","signature","AFcWxV21C7fd0v3bYYYRCpSSRl31ABayz5pdk84jno7.Udj6-U8ffwbT","PayPal");
INSERT INTO payment_gateway VALUES("4","mode","sandbox","PayPal");





CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO payment_methods VALUES("1","Paypal","Active");





CREATE TABLE IF NOT EXISTS `payment_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO payment_settings VALUES("1","currency_code","USD","general");
INSERT INTO payment_settings VALUES("2","fee_donation","5","general");
INSERT INTO payment_settings VALUES("3","payment_gateway","Paypal","general");
INSERT INTO payment_settings VALUES("4","username","","paypal");
INSERT INTO payment_settings VALUES("5","password","","paypal");
INSERT INTO payment_settings VALUES("6","signature","","paypal");
INSERT INTO payment_settings VALUES("7","mode","sandbox","paypal");
INSERT INTO payment_settings VALUES("8","secret_key","","stripe");
INSERT INTO payment_settings VALUES("9","publishable_key","","stripe");





CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL DEFAULT '0',
  `amount` double(8,2) NOT NULL,
  `currncy_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Future','Completed') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Future',
  `transaction_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO payments VALUES("1","1","2","0","1.00","USD","Completed","59047929YJ821762X","1","","2017-03-29 12:15:47","2017-03-29 12:15:47");
INSERT INTO payments VALUES("2","17","2","0","1.00","USD","Completed","97C58562C54792000","1","","2017-05-02 12:42:08","2017-05-02 12:42:08");





CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permission_role VALUES("1","1");
INSERT INTO permission_role VALUES("2","1");
INSERT INTO permission_role VALUES("3","1");
INSERT INTO permission_role VALUES("4","1");
INSERT INTO permission_role VALUES("5","1");
INSERT INTO permission_role VALUES("6","1");
INSERT INTO permission_role VALUES("7","1");
INSERT INTO permission_role VALUES("8","1");
INSERT INTO permission_role VALUES("8","2");
INSERT INTO permission_role VALUES("9","1");
INSERT INTO permission_role VALUES("9","2");
INSERT INTO permission_role VALUES("10","1");
INSERT INTO permission_role VALUES("10","2");
INSERT INTO permission_role VALUES("11","1");
INSERT INTO permission_role VALUES("11","2");
INSERT INTO permission_role VALUES("12","1");
INSERT INTO permission_role VALUES("12","2");
INSERT INTO permission_role VALUES("13","1");
INSERT INTO permission_role VALUES("13","2");
INSERT INTO permission_role VALUES("14","1");
INSERT INTO permission_role VALUES("14","2");
INSERT INTO permission_role VALUES("15","1");
INSERT INTO permission_role VALUES("15","2");
INSERT INTO permission_role VALUES("16","1");
INSERT INTO permission_role VALUES("17","1");
INSERT INTO permission_role VALUES("18","1");
INSERT INTO permission_role VALUES("19","1");
INSERT INTO permission_role VALUES("20","1");
INSERT INTO permission_role VALUES("21","1");
INSERT INTO permission_role VALUES("22","1");
INSERT INTO permission_role VALUES("23","1");





CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO permissions VALUES("1","general_settings","General Setting","General Setting","","");
INSERT INTO permissions VALUES("2","email_settings","Email Setting","Email Setting","","");
INSERT INTO permissions VALUES("3","payment_settings","Payment Settings","Payment Settings","","");
INSERT INTO permissions VALUES("4","meta_settings","Meta Settings","Meta Settings","","");
INSERT INTO permissions VALUES("5","role_settings","Role Settings","Role Settings","","");
INSERT INTO permissions VALUES("6","backup_settings","Backup Settings","Backup Settings","","");
INSERT INTO permissions VALUES("7","photo_settings","Photo Settings","Photo Settings","","");
INSERT INTO permissions VALUES("8","view_category","View Category","View Category","","");
INSERT INTO permissions VALUES("9","add_category","Add Category","Add Category","","");
INSERT INTO permissions VALUES("10","edit_category","Edit Category","Edit Category","","");
INSERT INTO permissions VALUES("11","delete_category","Delete Category","Delete Category","","");
INSERT INTO permissions VALUES("12","view_photo","View Photo","View Photo","","");
INSERT INTO permissions VALUES("13","edit_photo","Edit Photo","Edit Photo","","");
INSERT INTO permissions VALUES("14","delete_photo","Delete Photo","Delete Photo","","");
INSERT INTO permissions VALUES("15","manage_report","Manage Report","Manage Report","","");
INSERT INTO permissions VALUES("16","manage_payment","Manage Payment","Manage Payment","","");
INSERT INTO permissions VALUES("17","manage_withdraw","Manage Withdraw","Manage Withdraw","","");
INSERT INTO permissions VALUES("18","view_member","View Member","View Member","","");
INSERT INTO permissions VALUES("19","add_member","Add Member","Add Member","","");
INSERT INTO permissions VALUES("20","edit_member","Edit Member","Edit Member","","");
INSERT INTO permissions VALUES("21","delete_member","Delete Member","Delete Member","","");
INSERT INTO permissions VALUES("22","manage_page","Manage Page","Manage Page","","");
INSERT INTO permissions VALUES("23","manage_join_us","Manage Join Us","Manage Join Us","","");





CREATE TABLE IF NOT EXISTS `photo_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `field` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO photo_details VALUES("1","1","categories","a:1:{i:0;s:1:\"2\";}");
INSERT INTO photo_details VALUES("2","1","address","New York, NY 10007, USA");
INSERT INTO photo_details VALUES("3","1","longitude","40.7127837");
INSERT INTO photo_details VALUES("4","1","latitude","-74.00594130000002");
INSERT INTO photo_details VALUES("5","11","categories","a:2:{i:0;s:1:\"1\";i:1;s:1:\"2\";}");
INSERT INTO photo_details VALUES("6","11","address","Hyderabad, Telangana, India");
INSERT INTO photo_details VALUES("7","11","longitude","-0.003175735472008728");
INSERT INTO photo_details VALUES("8","11","latitude","-0.0019311904907226562");
INSERT INTO photo_details VALUES("9","2","categories","a:3:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";}");
INSERT INTO photo_details VALUES("10","2","address","33307, Lithuania");
INSERT INTO photo_details VALUES("11","2","longitude","55.27091154603272");
INSERT INTO photo_details VALUES("12","2","latitude","25.204189198107997");
INSERT INTO photo_details VALUES("13","13","categories","a:3:{i:0;s:1:\"2\";i:1;s:1:\"3\";i:2;s:1:\"4\";}");
INSERT INTO photo_details VALUES("14","13","address","Avon Park, United States");
INSERT INTO photo_details VALUES("15","13","longitude","27.6648274");
INSERT INTO photo_details VALUES("16","13","latitude","-81.51575350000002");
INSERT INTO photo_details VALUES("17","14","camera","Canon EOS 50D");
INSERT INTO photo_details VALUES("18","14","lens_model","10-20mm");
INSERT INTO photo_details VALUES("19","14","shutter_speed","53/5");
INSERT INTO photo_details VALUES("20","14","aperture","f/8.0");
INSERT INTO photo_details VALUES("21","14","focal_length","12");
INSERT INTO photo_details VALUES("22","14","iso","200");
INSERT INTO photo_details VALUES("23","14","categories","a:1:{i:0;s:1:\"4\";}");
INSERT INTO photo_details VALUES("42","18","focal_length","14");
INSERT INTO photo_details VALUES("41","18","aperture","f/11.0");
INSERT INTO photo_details VALUES("40","18","shutter_speed","3/5");
INSERT INTO photo_details VALUES("39","18","lens_model","14.0-24.0 mm f/2.8");
INSERT INTO photo_details VALUES("38","18","camera","NIKON D3X");
INSERT INTO photo_details VALUES("43","18","35mm_equivalent","14");
INSERT INTO photo_details VALUES("44","18","iso","125");





CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sell_photo` enum('Yes','No') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `price` double(8,2) NOT NULL DEFAULT '0.00',
  `view_count` int(11) NOT NULL DEFAULT '0',
  `love_count` int(11) NOT NULL DEFAULT '0',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0',
  `download_count` int(11) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` enum('Active','Inactive','Deleted') COLLATE utf8_unicode_ci DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO photos VALUES("1","2","upload_pic_1490784747.jpg","Yes","10.00","319","1","1024","768","1","Desert","t is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose","Active","2017-03-29 10:52:27","2017-05-02 08:33:00");
INSERT INTO photos VALUES("2","2","upload_pic_1490784775.jpg","No","0.00","80","1","852","480","1","Here is Photo Title","Write Photo  here.","Active","2017-03-29 10:52:55","2017-05-01 13:07:37");
INSERT INTO photos VALUES("3","2","upload_pic_1490784782.jpg","No","0.00","30","0","730","330","0","","","Active","2017-03-29 10:53:03","2017-05-01 13:07:39");
INSERT INTO photos VALUES("4","2","upload_pic_1490784789.jpg","No","0.00","20","0","1428","952","0","","","Active","2017-03-29 10:53:09","2017-04-25 05:42:19");
INSERT INTO photos VALUES("5","2","upload_pic_1490784796.jpg","No","0.00","6","0","2716","1544","0","","","Active","2017-03-29 10:53:16","2017-04-20 05:46:45");
INSERT INTO photos VALUES("6","2","upload_pic_1490784801.jpg","No","0.00","15","0","373","315","0","","","Active","2017-03-29 10:53:21","2017-04-29 13:08:04");
INSERT INTO photos VALUES("7","2","upload_pic_1490784806.jpg","No","0.00","9","0","702","336","0","","","Active","2017-03-29 10:53:26","2017-04-25 05:32:50");
INSERT INTO photos VALUES("8","2","upload_pic_1490784811.jpg","No","0.00","7","1","1300","957","0","","","Active","2017-03-29 10:53:31","2017-04-20 05:46:37");
INSERT INTO photos VALUES("9","2","upload_pic_1490784817.jpg","No","0.00","13","1","1224","816","0","","","Active","2017-03-29 10:53:37","2017-04-25 05:42:25");
INSERT INTO photos VALUES("10","2","upload_pic_1490784822.jpg","No","0.00","9","0","810","340","0","","","Active","2017-03-29 10:53:42","2017-04-25 05:32:53");
INSERT INTO photos VALUES("11","2","upload_pic_1490784828.png","Yes","2.00","37","1","301","129","0","Photo title here","Photo Desciption goes here.","Active","2017-03-29 10:53:48","2017-05-01 13:07:38");
INSERT INTO photos VALUES("12","6","upload_pic_1490949822.jpg","No","0.00","7","1","1024","768","0","","","Active","2017-03-31 08:43:42","2017-05-02 07:16:23");
INSERT INTO photos VALUES("13","6","upload_pic_1491051345.jpg","Yes","1.00","21","1","1024","768","0","sea","sea","Active","2017-04-01 12:55:46","2017-04-25 05:13:07");
INSERT INTO photos VALUES("14","8","upload_pic_1492581627.jpg","Yes","1.00","4","0","3000","2000","0","First Photo","This is my first photo","Active","2017-04-19 06:00:27","2017-04-30 08:56:30");
INSERT INTO photos VALUES("17","3","upload_pic_1493616241.jpg","Yes","1.00","5","0","5000","3000","0","","","Active","2017-05-01 05:24:02","2017-05-02 12:39:20");
INSERT INTO photos VALUES("18","2","upload_pic_1493709411.jpg","No","0.00","0","0","4724","3150","0","","","Active","2017-05-02 07:16:52","2017-05-02 07:16:52");
INSERT INTO photos VALUES("19","2","upload_pic_1493709442.jpg","No","0.00","0","0","900","400","0","","","Active","2017-05-02 07:17:22","2017-05-02 07:17:22");
INSERT INTO photos VALUES("20","2","upload_pic_1493709459.png","No","0.00","0","0","1920","858","0","","","Active","2017-05-02 07:17:40","2017-05-02 07:17:40");
INSERT INTO photos VALUES("21","2","upload_pic_1493709471.jpg","No","0.00","0","0","1024","768","0","","","Active","2017-05-02 07:17:52","2017-05-02 07:17:52");
INSERT INTO photos VALUES("22","2","upload_pic_1493709479.jpg","No","0.00","0","0","1024","768","0","","","Active","2017-05-02 07:17:59","2017-05-02 07:17:59");
INSERT INTO photos VALUES("23","2","upload_pic_1493709487.jpg","No","0.00","0","0","1024","768","0","","","Active","2017-05-02 07:18:07","2017-05-02 07:18:07");





CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `status` enum('unsolved','solved') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unsolved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO reports VALUES("4","6","5","inappropriate image please remove this.","unsolved","2017-04-01 06:05:56","2017-04-20 09:06:48");
INSERT INTO reports VALUES("12","9","1","hello","solved","2017-04-20 05:41:30","2017-04-20 09:06:57");
INSERT INTO reports VALUES("7","6","12","777","unsolved","2017-04-01 06:07:48","2017-04-01 06:07:48");





CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO role_user VALUES("1","1");





CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO roles VALUES("1","admin","Admin","Admin User","","");
INSERT INTO roles VALUES("2","Modarator","Modarator","Modarator","2017-04-29 11:52:14","2017-04-29 11:52:14");





CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO site_settings VALUES("1","name","PhotoCRAM","general");
INSERT INTO site_settings VALUES("2","logo","logo.png","general");
INSERT INTO site_settings VALUES("3","favicon","favicon.ico","general");
INSERT INTO site_settings VALUES("4","head_code","","general");
INSERT INTO site_settings VALUES("5","default_currency","1","general");
INSERT INTO site_settings VALUES("6","default_language","6","general");
INSERT INTO site_settings VALUES("7","photo_min_height","300","photos");
INSERT INTO site_settings VALUES("8","photo_min_width","300","photos");
INSERT INTO site_settings VALUES("9","photo_max_size","100","photos");
INSERT INTO site_settings VALUES("10","welcome_text","Little help, for big cause!","general");
INSERT INTO site_settings VALUES("11","welcome_subtitle","Crowdfunding Platform","general");
INSERT INTO site_settings VALUES("12","driver","smtp","email");
INSERT INTO site_settings VALUES("13","host","smtp.gmail.com","email");
INSERT INTO site_settings VALUES("14","port","587","email");
INSERT INTO site_settings VALUES("15","from_address","stockpile.techvill@gmail.com","email");
INSERT INTO site_settings VALUES("16","from_name","Photocram","email");
INSERT INTO site_settings VALUES("17","encryption","tls","email");
INSERT INTO site_settings VALUES("18","username","stockpile.techvill@gmail.com","email");
INSERT INTO site_settings VALUES("19","password","xgldhlpedszmglvj","email");
INSERT INTO site_settings VALUES("20","key","AIzaSyC2lQCpLk6SZ3U5zBaV7y4n-lXfqjsMQXM","googleMap");





CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `field` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO user_details VALUES("1","2","about_you","Abount me");
INSERT INTO user_details VALUES("2","2","location","Dhaka");
INSERT INTO user_details VALUES("4","2","paypal_email","sami999@gmail.com");
INSERT INTO user_details VALUES("5","6","location","Noagoan");
INSERT INTO user_details VALUES("6","4","paypal_email","lenin.rock@gmail.com");
INSERT INTO user_details VALUES("7","8","location","");





CREATE TABLE IF NOT EXISTS `user_loves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO user_loves VALUES("10","1","2","2017-04-02 13:18:49","2017-04-02 13:18:49");
INSERT INTO user_loves VALUES("2","8","2","2017-03-30 07:43:14","2017-03-30 07:43:14");
INSERT INTO user_loves VALUES("3","13","6","2017-04-01 12:58:24","2017-04-01 12:58:24");
INSERT INTO user_loves VALUES("8","12","6","2017-04-01 12:58:41","2017-04-01 12:58:41");
INSERT INTO user_loves VALUES("11","2","2","2017-04-03 12:33:45","2017-04-03 12:33:45");
INSERT INTO user_loves VALUES("15","11","2","2017-04-30 06:31:50","2017-04-30 06:31:50");
INSERT INTO user_loves VALUES("14","9","2","2017-04-10 12:45:02","2017-04-10 12:45:02");





CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `profile_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `follower_count` int(11) NOT NULL DEFAULT '0',
  `following_count` int(11) NOT NULL DEFAULT '0',
  `type` enum('User','Admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'User',
  `status` enum('Active','Inactive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO users VALUES("1","Admin","devadmin@dev.com","$2y$10$1WGak0aHGXd42sRQHpNMteeYGhywGtdRl1Estp74m.j7qgWtHX1US","profile.jpg","","0","0","Admin","Active","lLXhvVhXSUiNtqVqxHopTvvQl4HwmgZVR7NYsBAPegNr9xgI7NUG5iaZLvWX","","2017-04-27 07:03:15");
INSERT INTO users VALUES("2","rashed","rashed@gmail.com","$2y$10$r8dYDLJwAq25UvaIueWPeur3hlpKaBRdLgvK3yVSGScIZlMY9eb.S","profile.jpg","banner.jpg","0","0","User","Active","XTlh3MGI4Y5YFJEMRTd1JE0ldHa88FTf0U3CO15WGQZrhz2xiLEpEzR4W0EW","2017-03-22 00:00:00","2017-03-31 08:41:31");
INSERT INTO users VALUES("3","Sami Khan","sami.techvill@gmail.com","$2y$10$r8dYDLJwAq25UvaIueWPeur3hlpKaBRdLgvK3yVSGScIZlMY9eb.S","","","0","0","User","Active","3tzIb4YOaQXeJh26Ou2FPxDnQ6nFIOslKTuofxEvRm14B5DoatkWB70jxDIh","2017-03-19 06:01:46","2017-04-03 05:44:06");
INSERT INTO users VALUES("4","Tauhidul Hasan","lenin.rock@gmail.com","$2y$10$cpimA6zTzVKJw1ZcTogHuuOZkZmbDbpzf7quCpmAupriMVZuXxNb2","","","0","0","User","Active","nESuM2ueXU4aFVnEiKqW0Z7aCu4XNxGoMjc5I1gC44ycVmQKFyEdQjwVaVC5","2017-03-22 08:16:41","2017-03-22 08:16:41");
INSERT INTO users VALUES("5","Aminul","aminul@gmail.com","$2y$10$TU7NAWoC.S2TSVZzg1sPZ.L/lPO/HJhhLToPvKfTLoWUqm/6AjrIu","","","0","0","User","Active","","2017-03-23 13:27:02","2017-03-23 13:27:02");
INSERT INTO users VALUES("6","Aminul Islam","aminul.techvill@gmail.com","$2y$10$lA9whG/WFRxwB1f7uybRVO6okiM.4kkezALnfNZW6hVajv71Igc2C","profile.jpg","banner.jpg","0","0","User","Active","","2017-03-31 08:43:19","2017-04-03 05:55:15");
INSERT INTO users VALUES("7","Shahin Alam","shahin.techvill@gmail.com","$2y$10$7OhSO13w8vR1kUPGVdLlTe1u2s8kKU7mbSC.YDtmLu1RSVqaWEhGu","","","0","0","User","Active","","2017-04-09 06:48:50","2017-04-09 06:48:50");
INSERT INTO users VALUES("8","Reza121","reza.techvill@gmail.com","$2y$10$E3hW/FiOhSUQOBLTQQ4Ni.e6C54S1MlDhYNc5W/qufo/RLhSLBK7G","","","0","0","User","Active","xVJSb2F6YuU3l4WHsUDRDlKiunczpwPsvDqvSxtIVPkRQUdASldbce9ReNn7","2017-04-19 05:59:10","2017-04-25 08:31:39");
INSERT INTO users VALUES("9","Sagor","sagor@gmail.com","$2y$10$MtwCEHtiEq285opXsaqk5.slx1wV48NJyRrs.1ActqxVMI4cLLAY.","","","0","0","User","Active","mK2YqWpN9usrF8sBQ6ZZrloUwxHOSReTyFwuoqRdiBKeWYuE38xCxU2bWFtO","2017-04-20 05:22:30","2017-04-20 05:22:30");
INSERT INTO users VALUES("10","sam","sam@gmail.com","$2y$10$zMnsr0M72Gjqu5uifPuJCu.Cl7LQbEFrs9.MgiW7UpH/4.xxBAjma","","","0","0","User","Active","","2017-04-25 08:29:42","2017-04-25 08:29:42");





CREATE TABLE IF NOT EXISTS `withdraws` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `status` enum('Pending','Accepted') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO withdraws VALUES("1","2","0.00","Accepted","2017-03-31 12:13:42","2017-04-01 12:39:48");



